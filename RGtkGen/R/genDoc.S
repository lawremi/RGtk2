require(XML)

genDocs <- function(files, defs, output, descriptions, verbose = F) {
	if(!file.exists(output)) {
		cat("Creating ", output, "\n")
        dir.create(output)
    }
	
	# instead of sending defs all the way down the stack, just assign it in
	# the necessary environments
	env <- new.env()
	concepts <- gsub(".Rd", "", dir(output))
	classes <- c(names(defs$objects), names(defs$interfaces))
	memFuncs <- sapply(mem_funcs, function(func) toCapPhraseName(func, TRUE, classNames=classes))
	assign("concepts", concepts, envir=env) 
	assign("classes", classes, envir=env)
	assign("types", c(names(defs$objects), names(defs$interfaces), names(defs$boxes), 
		names(defs$enums), names(defs$flags), names(defs$pointers), names(defs$userfunctions)), envir=env)
  assign("memFuncs", memFuncs, envir=env)
	environment(linkend_to_func) <<- env
	environment(tolink) <<- env
	environment(toDescs) <<- env
	environment(filter) <<- env
	
	sapply(1:length(files), function(i) {
		concepts <- sapply(files[[i]], genDoc, defs, output, verbose)
		concepts <- concepts[which(!is.na(concepts))]
		writeRd(genIndex(concepts, descriptions[i]), output)
	})
}

genDoc <- function(file, defs, output, verbose)
{
  if (basename(file) == "annotation-glossary.xml")
    return(NA)
  if (grepl("api-index", file))
    return(NA)
  
	if (sub("\\.[^.]*$", "", basename(file)) %in% undocumentedConcepts)
		return(NA)
	
	entities <- c("num" = "#", "nbsp" = " ", "sol" = "/", "mdash"="--",
                      "percnt" = "\\%", ast = "*",
                      "gdk-pixbuf" = "<application>gdk-pixbuf</application>")
	text <- paste(readLines(file), collapse="\n")
	sapply(names(entities), function(entity) 
               text <<- gsub(paste("&", entity, ";", sep=""), entities[[entity]], text)
	)
	root <- xmlTreeParse(text, asText = T, useInternalNodes = T)
	
	concept <- parseConcept(root, defs, verbose)
	writeRd(concept, output)
	
	funcs <- parseFunctions(root, defs, verbose)
	# don't write out the ones we didn't parse
	funcs <- funcs[which(!is.na(funcs))]
	sapply(funcs, writeRd, output)
	
	concept
}

title_path <- "refnamediv/refname/text()"
desc_path <- "refnamediv/refpurpose/text()"
synopsis_path <- "refsynopsisdiv/title[text() = 'Synopsis']/../synopsis/link[contains(@linkend, '-')]"
hierarchy_path <- "refsect1/title[text() = 'Object Hierarchy']/../synopsis"
impl_path <- "refsect1/title[text() = 'Known Implementations']/../para"
interface_path <- "refsect1/title[text() = 'Implemented Interfaces']/../para"
derived_path <- "refsect1/title[text() = 'Known Derived Interfaces']/../para"
details_path <- "refsect1/title[text() = 'Description']/../*[name() != 'title' and name() != 'refsect2' and name() != 'section']"
extras_path <- "refsect1/title[text() = 'Description']/../*[name() = 'refsect2' or name() = 'section']"
properties_path <- "refsect1/title[text() = 'Property Details' or text() = 'Properties']/../refsect2"
signals_path <- "refsect1/title[text() = 'Signals' or text() = 'Signal Details']/../refsect2"
style_props_path <- "refsect1/title[text() = 'Style Property Details']/../refsect2"
seealso_path <- "refsect1/title[text() = 'See Also']/../para/link/type/text()"
library_path <- "refmeta/refmiscinfo/text()"
enum_path <- "refsect1/refsect2/title[contains(text(), 'enum')]/.."
#struct_path <- "/refsect1/refsect2/title[not(contains(text(), ' ')) and not(contains(text(), '_')) or contains(text(), 'struct')]/.."
struct_path <- "refsect1/refsect2/programlisting[contains(text(), 'struct')]/.."
func_path <- "/refentry/refsect1/refsect2/title[contains(text(), ' ()') and contains(text(), '_') and not(contains(text(), '_t '))]/.."
userfunc_path <- "refsect1/refsect2/title[contains(text(), ' ()') and (not(contains(text(), '_')) or contains(text(), '_t '))]/.."
func_name_path <- "indexterm/primary/text()"
func_names_path <- paste(func_path, func_name_path, sep="/")

parseConcept <- function(doc, defs, verbose) {
	entry <- getNodeSet(doc, "/refentry")[[1]]
	concept <- list()
	concept["title"] <- escape_text(xmlValue(getNodeSet(entry, title_path)[[1]]))
	id <- xmlGetAttr(entry, "id")
	concept["alias"] <- id
        funNames <- gsub("_", "", tolower(names(allDefs$functions)))
        ## avoid case-insensitive overlap with function file
        concept["name"] <- if (tolower(id) %in% funNames)
          paste(id, "concept", sep = "-")
        else id
	if (verbose)
		message("Concept: ", concept$name)
	concept["description"] <- markup(getNodeSet(entry, desc_path))
	funcNames <- sapply(getNodeSet(doc, func_names_path), xmlValue)
	concept[["Methods and Functions"]] <- toRFuncs(funcNames)
	concept[["Hierarchy"]] <- toHierarchy(getNodeSet(entry, hierarchy_path))
	concept[["Implementations"]] <- markup(getNodeSet(entry, impl_path))
	concept[["Interfaces"]] <- markup(getNodeSet(entry, interface_path))
	concept[["Interface Derivations"]] <- markup(getNodeSet(entry, derived_path))
	concept["Detailed Description"] <- markup(getNodeSet(entry, details_path))
	sapply(getNodeSet(entry, extras_path), function(extra) {
		id <- xmlGetAttr(extra, "id")
		if (!is.null(id)) {
			if (id %in% omittedSections)
				return()
			concept[["aliases"]] <- c(concept[["aliases"]], linkend_to_func(id))
		}
		title <- xmlValue(getNodeSet(extra, "title/text()")[[1]])
		if (title %in% omittedSections)
			return()
		concept[title] <<- markup(getNodeSet(extra, "*[name() != 'title']|text()"))
	})
	structs <- toRStructs(getNodeSet(entry, struct_path), defs)
	concept[["Structures"]] <- structs$code
	concept[["alias"]] <- c(concept[["alias"]], structs$names)
	constructible <- structs$realnames %in% names(defs$objects)
	collapsed <- sapply(structs$names[constructible], changeCapitalization, F)
	if (length(collapsed) > 0) {
          hasConstructor <- function(type)
            length(setdiff(getConstructors(type, defs), undocumentedFuncs)) > 0
          names(collapsed) <- structs$realnames[constructible]
          constructors <- collapsed[sapply(names(collapsed), hasConstructor)]
          concept[["Convenient Construction"]] <-
            toCollapsed(constructors, defs)
          concept[["Methods and Functions"]] <-
            c(concept[["Methods and Functions"]],
              paste(toSignature(constructors), collapse = rd("cr")))
          concept[["alias"]] <- c(concept[["alias"]], constructors)
	}
	# get the fields for a structure (could be object, pointer, or boxed) and then
	# derive accessor function name. Add that name to the aliases.
	enums <- toREnums(getNodeSet(entry, enum_path), defs)
	concept[["Enums and Flags"]] <- enums$code
	userfuncs <- toUserFuncs(getNodeSet(entry, userfunc_path))
	concept[["alias"]] <- c(concept[["alias"]], userfuncs$names)
	concept[["User Functions"]] <- userfuncs$code
	concept[["alias"]] <- c(concept[["alias"]], enums$names)
	if (concept["name"] %in% names(customNotes))
		concept["note"] <- customNotes[[concept[["name"]]]]
	concept["Signals"] <- toSignals(getNodeSet(entry, signals_path))
	concept["Properties"] <- toProperties(getNodeSet(entry, properties_path))
	concept["Style Properties"] <- toProperties(getNodeSet(entry, style_props_path))
	concept[["seealso"]] <- toSeeAlso(getNodeSet(entry, seealso_path))
	concept["references"] <- toUrlReference(xmlValue(getNodeSet(entry, library_path)[[1]]), id)
	concept["keyword"] <- "internal"
	concept
}

parseFunctions <- function(doc, defs, verbose) {
	funcs <- getNodeSet(doc, func_path)
	lapply(funcs, parseFunction, defs, verbose)
}

func_value_path <- "variablelist/varlistentry/term/emphasis[text() = 'Returns']/../../listitem/simpara"
func_value_type_path <- "programlisting/link[1]//text()"
warning_path <- "warning"
note_path <- "note|para/note"

toReturnValue <- function(node) {
  value <- filter(markup(getNodeSet(node, func_value_path)))
	value_type <- paste("[", mapTypeToLink(xmlValue(getNodeSet(node, func_value_type_path)[[1]])), "]", sep="")
  if (nchar(value) > 0)
		value <- paste(value_type, value)
	value
}

parseFunction <- function(node, defs, verbose) {
	func <- list()
	name <- sub(" ()", "", xmlValue(getNodeSet(node, func_name_path)[[1]]))
	if (name %in% undocumentedFuncs)
		return(NA)
	if (verbose)
		message("Function: ", name)
	s_name <- toCapPhraseName(name, TRUE, classNames=c(names(defs$objects), names(defs$interfaces)))
	func["name"] <- func["title"] <- func["alias"] <- s_name
	text <- getNodeSet(node, desc_text_path)
	func["description"] <- if (length(text)) filter(markup(text[1])) else ""
	warning <- getNodeSet(node, warning_path)
	if (length(warning) > 0)
		func[["description"]] <- c(func["description"], toWarning(warning[[1]]))
	f <- formals(s_name)
	f <- f[which(!sapply(names(f), isBuiltInParam))]
	func["usage"] <- codewrap(invoke(s_name, s_signature(f)))
	fun <- defs$fun[[name]]
	params <- fun$parameters
	if (isMethod(fun))
		params <- c(object=makeObjectParam(fun$ofobject), params)
	if (fun$varargs == '1')
		params <- c(params, "..."=list(list(name = "...")))
	names(params) <- nameToS(names(params))
	param_items <- toParameterItems(node, paramNames=names(params))
	names(param_items) <- names(params)
	if (".errwarn" %in% names(f)) {
		params <- c(params, ".errwarn"=list(list(name = ".errwarn")))
		param_items <- c(param_items, .errwarn = rd("item", ".errwarn", 
			"Whether to issue a warning on error or fail silently"))
	}
	in_params <- sapply(params, isInParam)
	if (any(in_params)) {
		in_items <- param_items[in_params]
		in_items <- in_items[sapply(names(in_items), function(name) name %in% names(f))]
		func[["arguments"]] <- in_items
		out_items <- param_items[-which(in_params)]
	} else out_items <- param_items
	func[["details"]] <- filter(markup(text[-1]))
	value <- toReturnValue(node)
	if (length(out_items) > 0) {
		if (nchar(value) > 0)
			out_items <- c(rd("item", "retval", value), out_items)
		value <- c("A list containing the following elements:", out_items)
	}
	func[["value"]] <- value
	func[["note"]] <- toNotes(getNodeSet(node, note_path))
	if (name %in% names(customNotes))
		func[["note"]] <- c(func[["note"]], customNotes[[name]])
	func["keyword"] <- "internal"
	func
}

genIndex <- function(concepts, description) {
	index <- list()
	index["title"] <- index["name"] <- index["alias"] <- names(description)
	index["description"] <- description[[1]]
	index[["details"]] <-
          c(paste("The RGtk binding to the", names(description),
                  "library consists of the following components:"),
            rd("describe", sapply(concepts, function(concept) {
              rd("item", rd("link", concept[["alias"]][[1]]),
                 concept[["description"]])
            })))
	url_key <- tolower(names(description))
	index["references"] <- paste0(rd("url", urlPrefices[[url_key]]), "/")
	index["keyword"] <- "interface"
	index
}

isBuiltInParam <- function(param) {
	#length(grep("^\\.[^.]", param)) > 0
	return(FALSE)
}

islower <- function(text) tolower(text) == text

isFunc <- function(text) length(grep("_[^:]*$", text)) > 0 & length(grep("_t$", text)) == 0

toRFuncs <- function(funcs) {
	funcs <- funcs[which(!(funcs %in% undocumentedFuncs))]
	sapply(funcs, function(func) { 
		func <- linkend_to_func(func)
		if (!exists(func)) {
			warning(func, " does not exist")
			return(NULL)
		}
		paste(rd("code", invoke(rd("link", func), toArgList(func))), rd("cr"), sep="")
	})
}

toArgList <- function(func) {
	f <- formals(func)
	s_signature(f[which(!sapply(names(f), isBuiltInParam))])
}

toSignature <- function(funcs) {
	sapply(funcs, function(func) rd("code", invoke(func, toArgList(func))))
}

toCollapsed <- function(constructors, defs) {
	sapply(names(constructors), function(type) {
		#type <- changeCapitalization(con, T)
		con <- constructors[[type]]
		cons <- sapply(getConstructors(type, defs), tolink)
		if (length(cons) > 1) 
		  paste(rd("code", con), " is the result of collapsing the constructors of ", 
		   rd("code", type), " (", paste(cons, collapse=", "),
		   ") and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.", 
		   sep="")
		else paste(rd("code", con), " is the equivalent of ", cons, ".", sep="")
	})
}

linkend_to_func <- function(linkend) {
	toCapPhraseName(gsub("-", "_", linkend), TRUE, classes)
}

tolink <- function(linkend, code = FALSE) {
	linkend <- gsub("-", "_", gsub("-struct", "", linkend))
	if (isFunc(linkend))
		linkend <- linkend_to_func(linkend)
	if ((!islower(linkend) && exists(linkend)) || linkend %in% types || linkend %in% concepts ||
		(mapType(linkend) %in% transparentTypes) || linkend == "GObject" || linkend == "GType") 
	{
                if (linkend %in% types || linkend %in% transparentTypes)
			linkend <- asRTypeName(linkend)
		link <- rd("link", linkend)
                if (!code)
			link <- rd("code", link)
		link
	} else NULL
}

toNotes <- function(notes) {
	sapply(notes, function(note) markup(getNodeSet(note, "para")))
}

toWarning <- function(warning) {
	rd("strong", paste("WARNING:", markup(getNodeSet(warning, "para[1]"))))
}

toSeeAlso <- function(others) {
	unlist(sapply(others, function(other) tolink(xmlValue(other))))
}

toHierarchy <- function(tree) {
	if (length(tree) > 0)
		rd("preformatted", sapply(tree, function(branch) markup(xmlChildren(branch), T, "")))
	else NULL
}

toUrlReference <- function(library, name) {
	library <- tolower(sub(".*?([a-zA-Z-]*) Library.*", "\\1", library))
	if (library == "pango") { # Pango no longer uses gtk-doc
	  url <- "https://docs.gtk.org/Pango/"
	} else {
	  url <- paste0(paste(urlPrefices[[library]], name, sep="/"), ".html")
	}
	rd("url", url)
}

xmlTraverse <- function(node, handlers) {
	name <- xmlName(node)
  if (is.na(name))
    name <- "text"
	##message(name)
	val <- NULL
	recurse <- TRUE
	if (!(name %in% names(handlers)))
		stop("cannot handle node type: ", name)
	if (!is.null(handlers[[name]]))
		val <- handlers[[name]](node)
	if (is.null(val))
		val <- paste(sapply(xmlChildren(node), xmlTraverse, handlers), collapse="")
	val
}

isG <- function(type) length(grep("^G[A-Z]", type)) > 0

child_val <- function(node) xmlValue(xmlChildren(node)[[1]])

example_count_path <- "count(//informalexample|//example)"
example_preceding_path <- "count(preceding::example|preceding::informalexample)"

markup <- function(nodes, verbatim = FALSE, collapse="  ", code = FALSE) {
        markup_link <- function(link) {
          linkend <- xmlGetAttr(link, "linkend")
		if (length(linkend) > 0) {
			result <- tolink(linkend, code)
			if (is.null(result)) {
                          ##message(paste("bad link: ", linkend))
                          result <- markup(xmlChildren(link), code = code)
			}
		} else result <- paste(child_val(link), " (", rd("url", xmlGetAttr(link, "href")), ")", sep="")
		result
	}
        markup_acronym <- function(acro) rd("acronym", child_val(acro))
	markup_type <- function(type) rd("verb", mapType(child_val(type)))
	markup_literal <- function(literal)
          rd("code", markup(xmlChildren(literal), code = TRUE))
	#markup_parameter <- function(param) rd("var", child_val(param))
	markup_emphasis <- function(emph) rd("emph", markup(xmlChildren(emph)))
        markup_title <- function(title) paste("\n", markup_emphasis(title))
	markup_ulink <- function(ulink) paste(child_val(ulink), " (", rd("url", xmlGetAttr(ulink, "url")), ")", sep="")
	markup_filename <- function(filename) rd("file", escape_text(child_val(filename)))
	markup_program <- function(program) {
          if (length(getNodeSet(program,
                                "parent::informalexample|parent::example")) == 0)
            message("---MISSING PROGRAMLISTING---")
          rd("preformatted",
             paste(markup(xmlChildren(program), TRUE, collapse), "\n", sep=""))
	}
	#markup_example <- function(example) rd("emph", "C language example intentionally omitted, please see reference")
	markup_example <- function(example) {
		## first example id, else section term, else id for entire refentry
          refentry <- getNodeSet(example, "ancestor::refentry")[[1]]
		id <- xmlGetAttr(refentry, "id")
		if (getNodeSet(refentry, example_count_path) > 1) 
			id <- paste(id, "-", getNodeSet(example, example_preceding_path) + 1, sep="")
		example_file <- examplefile(paste(id, ".R", sep=""))
		if (file.exists(example_file)) {
                  ex <- rd("preformatted", readLines(example_file))
                  title <- getNodeSet(example, "title")
                  if (length(title))
                    ex <- paste(markup_title(title[[1]]), ex, sep = "\n")
                  ex
                } else {
			message("Example '", id, "' not found")
			NULL
		}
	}
	markup_itemized <- function(itemized, type="itemize") {
		rd(type, sapply(getNodeSet(itemized, "listitem"), function(para) {
                  paste(rd("item"), markup(getNodeSet(para, "para")))
		}))
	}
	markup_ordered <- function(ordered) markup_itemized(ordered, "enumerate")
	markup_list <- function(list) {
		rd("itemize", sapply(getNodeSet(list, "member"), function(member) {
			paste(rd("item"), markup(xmlChildren(member)))
		}))
	}
	markup_option <- function(option) rd("option", child_val(option))
	markup_table <- function(table) {
		ncols <- xmlGetAttr(getNodeSet(table, "tgroup")[[1]], "cols")
		rd("tabular", paste(rep("l",ncols),collapse=""), sapply(getNodeSet(table, "tgroup/tbody/row"), function(row) {
			paste(paste(sapply(getNodeSet(row, "entry"), function(entry) 
				markup(xmlChildren(entry))
			), collapse=paste("",rd("tab"),"")), rd("cr"))
		}))
	}
	markup_varlist <- function(varlist) 
		rd("describe", toItems(varlist, desc_sub_name_path, 
			"varlistentry/listitem/para|varlistentry/listitem/simpara"))
	markup_envar <- function(envar) rd("env", escape_text(child_val(envar)))
	markup_warning <- function(warning) toWarning(warning)
	markup_app <- function(app) rd("command", child_val(app))
	markup_var <- function(var) escape_text(rd("var", child_val(var)))
	markup_quote <- function(quote) rd("dQuote", child_val(quote))
	markup_key <- function(key) rd("kbd", child_val(key))
	markup_combo <- function(combo) paste(sapply(getNodeSet(combo, "keycap"), markup_key), collapse="-")
	# LaTeX doesn't like multiparagraph emph's
	markup_important <- markup_note <- function(imp) paste(rd("strong", "PLEASE NOTE:"), markup(xmlChildren(imp)))
	#markup_important <- markup_note <- function(imp) rd("emph", markup(xmlChildren(imp)))
	markup_first <- function(first) rd("dfn", child_val(first))
	markup_param <- function(param) rd("code", nameToS(child_val(param)))
	markup_func <- function(func)
          rd("code", toCapPhraseName(markup(xmlChildren(func), code=TRUE), TRUE))
	markup_ignore <- function(ignore) ""
	markup_text <- function(text) {
          val <- xmlValue(text)
          if (!verbatim)
            val <- escape_text(val)
          val
        }
        handlers <- list(
		"text" = markup_text,
		"comment" = NULL,
		"literal" = markup_literal,
		"para" = NULL, "simpara" = NULL, "entry" = NULL,
                "refsect3" = NULL, "refsect2" = NULL,
		"link" = markup_link,
		"type" = markup_type,
		"parameter" = markup_param, "symbol" = markup_literal,
		"structfield" = markup_literal,
		"structname" = markup_literal,
		"function" = markup_func,
                "emph" = markup_emphasis,
		"emphasis" = markup_emphasis,
		"informalexample" = markup_example,
		"example" = markup_example,
		"programlisting" = markup_program, "synopsis" = markup_program,
		"ulink" = markup_ulink,
		"filename" = markup_filename,
		"itemizedlist" = markup_itemized,
		"inlinegraphic" = NULL, "anchor" = NULL,
		"figure" = markup_ignore, "graphic" = NULL,
		"option" = markup_option,
		"firstterm" = markup_first, "term" = NULL,
		"informaltable" = markup_table, "table" = markup_table,
		"variablelist" = markup_varlist,
		"envar" = markup_envar,
		"warning" = markup_warning, "important" = markup_important,
		"note" = markup_note, "footnote" = markup_note, "tip" = markup_note,
		"xref" = markup_link,
		"classname" = markup_literal,
		"guimenuitem" = markup_emphasis, "title" = markup_title,
		"application" = markup_app, "command" = markup_app,
		"simplelist" = markup_list,
		"replaceable" = markup_var,
		"quote" = markup_quote,
		"orderedlist" = markup_ordered,
		"indexterm" = markup_ignore,
		"keycap" = markup_key, "keycombo" = markup_combo,
		"abbrev" = markup_emphasis, "acronym" = markup_acronym,
                "tag" = markup_literal
	)
        restrictHandlers <- function(allowed) {
          restrictedHandlers <- structure(vector("list", length(handlers)),
                                          names = names(handlers))
          restrictedHandlers[allowed] <- handlers[allowed]
          restrictedHandlers
        }
        if (verbatim)
          handlers <- restrictHandlers("text")
        else if (code)
          handlers <- restrictHandlers(c("text", "link", "xref", "replaceable"))
        #if (is.null(nodes[[1]]))
	#	browser()
	escape_all(semantics(strip(paste(sapply(nodes, xmlTraverse, handlers), collapse = collapse))))
}

escape_all <- function(text) gsub("([^\\])([%])", "\\1\\\\\\2", text)
escape_text <- function(text) {
  escaped <- gsub("([\\])", "\\\\\\1", text)
  gsub("\\n\\n", "\n", escaped) # these would become new paragraphs in Rd
}
strip <- function(text) {
	sub("\n*$", "", sub("^\n*", "", text))
}
nl <- function(text) {
	if (length(grep("\n$", text)) == 0)
		c(text, "")
	else text
}
	
semantic_table <- c(
 "[^ ]*-terminated " = "", 
 "an array" = "a list", " [aA]rray" = " list", 
 "[aA]ddress of " = "",
 "macro" = "function"
)

semantics <- function(text) {
	sapply(names(semantic_table), function(term) text <<- gsub(term, semantic_table[[term]], text)) 
	text
}

prop_name_path <- "title/literal/text()"
prop_type_path <- "programlisting/link//text()"
prop_access_path <- "programlisting/text()[2]"

toProperties <- function(prop_nodes) {
	if (length(prop_nodes) == 0)
		return()
	rd("describe", sapply(prop_nodes, function(node) {
		rd("item", paste(rd("verb", extract_quotes(xmlValue(getNodeSet(node, prop_name_path)[[1]]))),
			" [", mapTypeToLink(xmlValue(getNodeSet(node, prop_type_path)[[1]])), " : ",
			sub("^ *: ", "", xmlValue(getNodeSet(node, prop_access_path)[[1]])), "]", sep=""),
			c("", markup(getNodeSet(node, desc_text_path)), ""))
	}))
}

mapTypeToLink <- function(type)
{
	type <- mapType(type)
	if (!is.null(type_link <- tolink(type)))
		type <- type_link
	type
}

desc_text_path <- "para"
desc_name_path <- "title/text()"
desc_sub_path <- "variablelist"
desc_sub_name_path <- "varlistentry/term"
desc_sub_text_path <- "varlistentry/listitem/simpara"

field_name_path <- "varlistentry/term/structfield"
field_type_path <- "varlistentry/term/link/text()"

toRStructs <- function(structs, defs) {
	types <- c(defs$pointers, defs$boxes, defs$objects, defs$interfaces)
	get_fields <- function(struct_name) {
		fields <- types[[struct_name]]$fields
		if (length(grep("^GdkEvent", struct_name)) > 0 && struct_name != "GdkEventAny"){
			fields <- c(types[["GdkEventAny"]]$fields, fields)
		}
		result <- sapply(fields, function(field) mapTypeToLink(baseType(field, T)))
		names(result) <- sapply(names(fields), toCapPhraseName, TRUE, names(types))
		result
	}
	toDescs(structs, get_fields, sub_name_path = field_name_path, sub_type_path = field_type_path)
}

#value_name_path <- "/varlistentry/term/literal/text()"

toREnums <- function(enums, defs) {
	#toDescs(enums, sub_name_path = value_name_path)
	types <- c(defs$enums, defs$flags)
	get_values <- function(enum_name) names(types[[enum_name]]$names)
	toDescs(enums, get_values)
}

param_type_path <- "programlisting/link[position() > 1]/text()"
param_name_path <- "variablelist/varlistentry/term/parameter"
param_text_path <- "variablelist/varlistentry/listitem/simpara"

extract_quotes <- function(text) sub("^[^\"]*\"", "", sub("\"[^\"]*$", "", text))

toCallbacks <- function(callback_nodes, name_path) {
  if (length(callback_nodes) == 0)
    return()
  callback_names <- NULL
  code <- rd("describe", sapply(callback_nodes, function(node) {
    name <- xmlValue(getNodeSet(node, name_path)[[1]])
    name <- extract_quotes(name)
    callback_names <<- c(callback_names, name)
    retval <- toReturnValue(node)
    rd("item", rd("code", invoke(name, s_signature(sapply(getNodeSet(node, param_name_path), child_val)))),
       c(toFuncText(node), "", rd("describe", toParameterItems(node)), "", 
         if (nchar(retval)) paste(rd("emph", "Returns:"), retval), ""))
  }))
  list(code = code, names = callback_names)
}

toUserFuncs <- function(userfunc_nodes)
{
	toCallbacks(userfunc_nodes, func_name_path)
}
toSignals <- function(signal_nodes)
{
	toCallbacks(signal_nodes, prop_name_path)$code
}

toFuncText <- function(node) {
	ensureText(markup(getNodeSet(node, desc_text_path)))
}

toParameterItems <- function(node, paramNames = NULL) {
	toItems(node, param_name_path, param_text_path, param_type_path, paramNames)
}

alias_names <- function(n) {
	if (!is.null(names(n)))
		n <- paste(n, " (", names(n), ")", sep="")
	n
}

toDescs <- function(nodes, item_info, name_path = desc_name_path, text_path = desc_text_path, 
 sub_path = desc_sub_path, sub_name_path = desc_sub_name_path, 
 sub_text_path = desc_sub_text_path, sub_type_path = NULL) 
{
	type_names <- names <- code <- NULL
	items <- sapply(nodes, function(node) {
		name <- xmlValue(getNodeSet(node, name_path)[[1]])
                name <- gsub(".* ", "", name)
		if (!(name %in% c(types, transparentTypes))) {
			#message(paste("Omitting type: ", name))
			return(NA)
		}
		
		type_name <- asRTypeName(name)
		text <- ensureText(markup(getNodeSet(node, text_path)))
		warning <- getNodeSet(node, warning_path)
		if (name %in% transparentTypes)
			text <- c(text, rd("strong", paste(rd("verb", type_name), " is a ", 
				rd("link", "transparent-type"), ".", sep="")))
		if (length(warning) > 0)
			text <- c(toWarning(warning[[1]]), text)
		info <- item_info(name)
		items <- getNodeSet(node, sub_path)
		old_style <- length(getNodeSet(node, "para/informaltable")) > 0
		if (length(items) > 0 || (length(info) > 0 && !old_style)) {
			if (length(items) > 0)
				items <- items[[1]]
			text <- c(text, "", rd("describe", toItems(items, sub_name_path,
				sub_text_path, sub_type_path, info)))
		}
		type_names <<- c(type_names, type_name)
		names <<- c(names, name)
		rd("item", rd("verb", type_name), nl(text))
	})
	items <- items[which(!is.na(items))]
	if (length(items) > 0)
		code <- rd("describe", items)
	list(code = code, names = type_names, realnames = names)
}

toItems <- function(node, name_path, text_path, type_path = NULL, item_info=NULL) {
	types <- NULL
	if (length(item_info) > 0) {
		names <- names(item_info)
		if (is.null(names)) 
			names <- item_info
		else types <- item_info
	} else names <- getNodeSet(node, name_path)
	if (length(names) == 0)
		return(character(0))
	if (!is.null(type_path) && is.null(types))
		types <- getNodeSet(node, type_path)
	if (length(node) > 0)
		text <- getNodeSet(node, text_path)
	sapply(1:length(names), function(i) {
		if (inherits(names[[i]], "XMLInternalNode"))
			name <- markup(names[i])
		else name <- rd("verb", names[i])
		if (length(node) > 0 && length(text) >= i)
			text <- markup(text[i])
		else text <- ""
		if (!is.null(type_path) && name != "..." && length(types) >= i) {
			if (inherits(types[[i]], "XMLInternalNode"))
				type <- xmlValue(types[[i]])
			else type <- types[i]
			text <- paste("[", mapTypeToLink(type), "] ", text, sep="")
		}
		rd("item", name, text)
	})
}

mapType <- function(type) {
	type <- gsub(" ", "", type)
	if (type == "gpointer" || type == "gconstpointer" || type == "GValue" || type == "void")
		"R object"
	else if (type == "GString" || type == "gchararray")
		"character"
	else if (type == "GStrv")
		"character list"
	else if (type == "GList" || type == "GSList")
		"list"
	else if (type == "GType")
		"GType"
	else if (isPrimitiveType(type) || isPrimitiveTypeRef(type))
		getGenericRType(type)
	else gsub("\\*" , "", type)
}
	
#mapAlias <- function(alias) {
#	if (alias %in% aliasMapping)
#		aliasMapping[[alias]]
#	else alias
#}

ensureText <- function(param)
{
  if (length(param) == 0 || all(nchar(param) == 0))
			param <- rd("emph", "undocumented\n")
  param
}

rd <- function(tag, ...) {
	# LaTeX doesn't like empty describes
	if (length(c(...)) == 0 && tag == "describe") {
		warning("Empty describe")
		return("")
	}
	params <- sapply(list(...), function(param) {
		if (length(param) > 1) 
			param <- c("", param, "")
		param <- ensureText(param)
		paste("{", paste(param, collapse="\n"), "}", sep="")
	})
	paste("\\", tag, paste(params, collapse=""), sep="")
}

rd_table_row <- function(cols) {
	paste(paste(cols, collapse = " \tab "), "\\cr", sep = "")
}
rd_table <- function(rows, columns = rep("l", length(rows))) {
	rd("table", columns, sapply(rows, rd_table_row))
}

writeRd <- function(doc, output) {
	required <- c("name", "alias", "title", "description", "keyword")
	first <- c("name", "title", "description", "usage", "arguments", "details", "value")
	last <- c("references", "note", "author", "seealso", "examples", "keyword")
	standard <- c(first, last)
	doc["author"] <- "Derived by RGtkGen from GTK+ documentation"
  #doc["encoding"] <- "UTF-8"
	doc <- doc[sapply(doc, length) > 0 & sapply(doc, function(element) any(sapply(element, nchar) > 0))
			| names(doc) %in% required]
	common <- standard[standard %in% names(doc)]
	rd_doc <- list()
	rd_doc["alias"] <- list(unique(sapply(doc[["alias"]], function(alias) rd("alias", alias))))
	rd_doc[common] <- sapply(common, function(field) rd(field, doc[[field]]))
	uncommon <- names(doc)[!(names(doc) %in% c("alias", standard))]
	rd_doc[uncommon] <- sapply(uncommon, function(key) rd("section", key, doc[[key]]))
	rd_doc <- rd_doc[c("alias", first, uncommon, last)]
	cat(unlist(rd_doc), file = file.path(output, paste(doc["name"], ".Rd", sep="")), sep="\n")
}

filter <- function(text) {
  ends <- gregexpr("[.,][^a-z0-9A-Z]+", text, perl=TRUE)[[1]]
  starts <- c(1L, ends + 1L)
  if (tail(ends, 1) == nchar(text))
    starts <- head(starts, -1)
  else ends <- c(ends, nchar(text))
  sentences <- substring(text, starts, ends)
  ## sentences <- strsplit(text, "[.,]( | \\n)")[[1]]
  ## if (length(grep("[.,]$", text)) > 0)
  ##   sentences <- c(sentences, "")
  ## punctuation <- gsub("[^.,]*([.,]( |\\n))[^.,]*", "\\1/", text)
  ## punctuation <- c("", strsplit(punctuation, "/")[[1]])
  funcs <- unlist(c(cleanupFuncs, finalizerFuncs, memFuncs))
  funcs <- funcs[which(nchar(funcs) > 0)]
  good_sentences <-
    as.logical(sapply(sentences, function(sentence) 
                      all(sapply(c("freed ", "owned by", "g_strdup", funcs),
                                 function(func) 
                                 length(grep(func, sentence, perl=T)) == 0))))
  ##message(good_sentences)
  if (any(!good_sentences)) {
    ##writeLines(sentences[!good_sentences], filterFile)
    ## text <- paste(punctuation[good_sentences], sentences[good_sentences], 
    ##               collapse="", sep="")
    text <- paste(sentences[good_sentences], collapse="")
  }
  text
}

examplefile <- function(name)
{
  file.path(system.file("examples", package="RGtk2"), name)
  ##file.path(installed.packages()["RGtk2", "LibPath"], "RGtk2", "examples", name)
}

codewrap <- function(x) {
  paste(capture.output(print(parse(text=x)[[1]])), collapse="\n")
}

## hacks for XML package

## xmlValue.XMLInternalNode =
## function(node, ignoreComments = FALSE)
## {
## 	#xmlValue(as(node, "XMLNode"))
## 	.Call("RS_XML_xmlNodeValue", node)
## }

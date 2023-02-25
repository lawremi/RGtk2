collapseConstructors <-
function(objs = defs$objects,  defs)
{
  types <- sapply(defs$fun, function(x) x$constructorof)
  cons <- lapply(names(objs), function(type) {
	  #my_cons <- getConstructors(type, defs)
	  my_cons <- names(defs$fun)[type == types]
	  if (length(my_cons) > 0)
		  my_cons <- my_cons[which(!(my_cons %in% undocumentedFuncs))]
	  my_cons
  })
  names(cons) <- names(objs)
  
  v <- lapply(cons, genCollapsedCode, defs)

  invisible(list(defs = v))
}

callcon <- function(con, defaultArgs, defs) {
	  className <- asRTypeName(mapToClassName(defs$fun[[con]]))
	  args <- names(defaultArgs[[con]])
	  m <- match("...", args)
	  if (!is.na(m) && length(args) > m)
		  args[-(1:m)] <- named(args[-(1:m)], args[-(1:m)])
	  invoke(toCapPhraseName(con, TRUE, classNames=className), args)
}

genConditions <- function(rpart, cons, args, defs, ind = 1) {
  tree <- rpart$frame
  cind <- as.character(ind) # work by rowname
  var <- gsub("varargs", "...", as.character(tree[cind, "var"]))
  if (var == "<leaf>")
	  return(callcon(cons[tree[cind,"yval"]], args, defs))
  depth <- round(log2(ind)-0.5)
  ind <- 2^(depth+1) + 2*(ind - 2^depth)
  dir <- rpart$split[length(which(tree[1:match(cind, rownames(tree)),1] != "<leaf>")), "ncat"]
  if (dir < 0)
	  dir <- 0
  code <- c(paste("if (!missing(", var, ")) {", sep=""),
	ind(genConditions(rpart, cons, args, defs, ind+1-dir)), "}")
  c(code, "else {", ind(genConditions(rpart, cons, args, defs, ind+dir)), "}")
}

# NOTE: this stuff now works on existing R functions, so...
# it doesn't run against just-generated code
# this is so we can collapse even manually written constructors
genCollapsedCode <- function(conset, defs) {
	if (length(conset) == 0)
		  return()
	if (FALSE) {
	params <- lapply(defs$functions[conset], function(x) {
		params <- x$parameters
	  	if (length(params) > 0) 
			params <- params[which(sapply(params, isInParam))]
		if (x$varargs == '1') {
			params <- c(params, "..." = list(list(name="...", nullok=F)))
		}
		params
	})
	}
	  # get the parameters for each constructor
	  #paramNames <- lapply(params, function(x) getParamNames(x))
	  r <- sapply(conset, toCapPhraseName, T, names(defs$objects))
	  f <- lapply(r, formals)
	  paramNames <- lapply(f, names)
	  defaultArgs <- lapply(f, function(args) {
		  cargs <- as.character(args)
		  names(cargs) <- names(args)
	  	  cargs
	  })
	  otherArgs <- c("show", ".flush", ".depwarn", ".errwarn")
	  # get the arg defaults for each constructor
	  # defaultArgs <- lapply(params, function(x) getDefaultSArgs(x))
	  allArgs <- list()
	  sapply(f, function(args) allArgs[names(args)] <<- as.list(args))
	  # let's sort it for convenience
	  allNames <- unlist(paramNames)
	  if (length(allArgs) > 0)
		  allArgs <- allArgs[sort.list(sapply(names(allArgs), function(arg) 
	  		length(which(arg == allNames))), decreasing=T)]
	  otherArgs <- otherArgs[otherArgs %in% names(allArgs)]
	  otherArgs.ind <- match(otherArgs, names(allArgs))
	  if (length(otherArgs.ind > 0))
		  allArgs <- c(allArgs[-otherArgs.ind], allArgs[otherArgs.ind])
	  # If this is a widget class (i.e. descendant from GtkWidget), then we need the
      # show and .flush arguments.
	  className <- mapToClassName(defs$fun[[conset[[1]]]])
	  #print(className)
	  #print(conset)
	  #otherArgs <- c(".flush" = "TRUE", ".depwarn" = "TRUE")
	  #if (inheritsClass(className, defs$objects, "GtkWidget")) {
		#  otherArgs <- c("show" = "TRUE", otherArgs)
	  #}
	  #allArgs <- c(allArgs, otherArgs)
      #defaultArgs <- lapply(defaultArgs, function(x) c(x, otherArgs))
	  #names(defaultArgs) <- conset
	  # find our function name
	  className <- asRTypeName(className)
	  funName <- changeCapitalization(className, FALSE)
	  # build our data frame for partitioning
	  condata <- data.frame(con = conset)
	  param_matrix <- sapply(unique(unlist(paramNames)), function(param) {
		  sapply(paramNames, function(con) param %in% con)
	  })
	  if ("..." %in% colnames(param_matrix))
		  colnames(param_matrix)[which("..." == colnames(param_matrix))] <- "varargs"
	  if (length(param_matrix > 0) && length(conset) > 1) {
		  condata <- cbind(condata, param_matrix)
		  # use rpart to determine best splits based on presence/absence of params
		  contree <- rpart(con ~ ., condata, control = rpart.control(minsplit=2, maxcompete=0, maxsurrogate=0))
		  contree$split <- as.data.frame(contree$split)
		  code <- genConditions(contree, levels(condata[,1]), defaultArgs, defs)
	  } else return(paste(rassign(funName, toCapPhraseName(conset[[1]], TRUE, classNames=className)), "\n\n", sep=""))

         # Define the function body
       code <- c(declareRFunction(funName, allArgs),
                 "{",
                 ind(code),
                 "}",
				 "")
		# record the code
       paste(paste(code, collapse="\n"), "\n", sep="")
}

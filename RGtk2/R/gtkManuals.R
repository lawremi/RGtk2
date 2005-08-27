# most of these functions are implemented manually for the same reason as their C counterpart

# reason: var args, paste 'em together
gtkMessageDialogNew <-
function(parent = NULL, flags, types, buttons, ..., show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
    checkPtrType(parent, "GtkWindow", nullOk = T)

    w <- .RGtkCall("S_gtk_message_dialog_new", parent, flags, types, buttons, paste(...), PACKAGE='RGtk', .flush = .flush)

    if(show)
        gtkWidgetShowAll(w)

    return(w)
}
# reason: same as above
gtkMessageDialogFormatSecondaryMarkup <-
function(object, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkMessageDialog")

        w <- .RGtkCall("S_gtk_message_dialog_format_secondary_markup", object, paste(...), PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}
# reason: same as above
gtkMessageDialogFormatSecondaryText <-
function(object, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkMessageDialog")

        w <- .RGtkCall("S_gtk_message_dialog_format_secondary_text", object, paste(...), PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}
# reason: same as above
gtkMessageDialogNewWithMarkup <-
function(parent, flags, type, buttons, ..., show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(parent, "GtkWindow")

        w <- .RGtkCall("S_gtk_message_dialog_new_with_markup", parent, flags, type, buttons, paste(...), PACKAGE = "RGtk", .flush = .flush)

        if(show)
                gtkWidgetShowAll(w)

        return(w)
}
# reason: var args, make two vectors, one for labels the other for responses
gtkDialogNewWithButtons <-
function(title = NULL, parent = NULL, flags = 0, ..., show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
        title <- as.character(title)
        checkPtrType(parent, "GtkWindow", nullOk = TRUE)
		
		args <- list(...)
		labels <- as.character(args[seq(1,length(args),by=2)])
		responses <- args[seq(2,length(args),by=2)]
		
        w <- .RGtkCall("S_gtk_dialog_new_with_buttons", title, parent, flags, labels, responses, PACKAGE = "RGtk", .flush = .flush)

        if(show)
                gtkWidgetShowAll(w)

        return(w)
}
gtkDialogAddButtons <-
function(object, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkDialog")

		args <- list(...)
		labels <- as.character(args[seq(1,length(args),by=2)])
		responses <- args[seq(2,length(args),by=2)]
		
        w <- .RGtkCall("S_gtk_dialog_add_buttons", object, labels, responses, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}


# reason: var-args for the buttons, compile into vectors of labels and responses (if given)
gtkFileChooserDialogNewWithBackend <-
function(title, parent, action, backend, ..., show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
        title <- as.character(title)
        checkPtrType(parent, "GtkWindow")
        backend <- as.character(backend)
        
		args <- list(...)
		
		labels <- NULL
		responses <- NULL
		if (length(args) > 1) {
			labels <- as.character(args[seq(1,length(args),by=2)])
			responses <- args[seq(2,length(args),by=2)]
		}

        w <- .RGtkCall("S_gtk_file_chooser_dialog_new_with_backend", title, parent, action, backend, labels, responses, PACKAGE = "RGtk", .flush = .flush)

        if(show)
                gtkWidgetShowAll(w)

        return(w)
}
gtkFileChooserDialogNew <-
function(title, parent, action, ..., show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
        w <- gtkFileChooserDialogNewWithBackend(title, parent, action, NULL, ..., show=show, .flush=.flush, .depwarn=.depwarn)

        return(w)
}

# reason: var-args - not yet ready for primetime

#gtkDialogSetAlternativeButtonOrder <-
#function(object, ..., .flush = TRUE, .depwarn = TRUE)
#{
#        checkPtrType(object, "GtkDialog")
#
#        w <- .RGtkCall("S_gtk_dialog_set_alternative_button_order", object, ..., -1, PACKAGE = "RGtk", .flush = .flush)
#
#        return(invisible(w))
#}

# reason: var-args, implemented from scratch on C side
gtkShowAboutDialog <-
function(parent, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(parent, "GtkWindow")

        w <- .RGtkCall("S_gtk_show_about_dialog", parent, list(...), PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: var-args, reimplemented on C side
gtkTextBufferCreateTag <-
function(object, tag.name, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTextBuffer")
        tag.name <- as.character(tag.name)
        
        w <- .RGtkCall("S_gtk_text_buffer_create_tag", object, tag.name, list(...), PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: var args, just compile into an array and send to alternate function
gtkListStoreNew <-
function(..., .flush = TRUE, .depwarn = TRUE)
{
        types <- checkArrType(c(...), as.GType)
        w <- .RGtkCall("S_gtk_list_store_newv", types, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: var args, just compile into an array and send to alternate function
gtkTreeStoreNew <-
function(..., .flush = TRUE, .depwarn = TRUE)
{
        types <- checkArrType(c(...), as.GType)
        w <- .RGtkCall("S_gtk_tree_store_newv", types, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: var args, break apart the args into cols and values vectors
gtkListStoreSet <-
function(object, iter, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkListStore")
        checkPtrType(iter, "GtkTreeIter")
		
		args <- list(...)
		cols <- as.integer(unlist(args[seq(1,length(args),by=2)]))
		if (length(args) == 2)
			values <- args[[2]]
		else values <- args[seq(2,length(args),by=2)]
		
        w <- .RGtkCall("S_gtk_list_store_set", object, iter, cols, values, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: var args, let's do it completely in R

gtkTreeStoreSet <-
function(object, iter, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTreeStore")
        checkPtrType(iter, "GtkTreeIter")
		
		args <- list(...)
		cols <- as.integer(unlist(args[seq(1,length(args),by=2)]))
		if (length(args) == 2)
			values <- args[[2]]
		else values <- args[seq(2,length(args),by=2)]
		
		w <- .RGtkCall("S_gtk_tree_store_set", object, iter, cols, values, PACKAGE = "RGtk", .flush = .flush)
}

# reason: var args, compile into named list and send to C
gtkCellLayoutSetAttributes <-
function(object, cell, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkCellLayout")
        checkPtrType(cell, "GtkCellRenderer")
		attributes <- lapply(c(...), as.integer)
		
        w <- .RGtkCall("S_gtk_cell_layout_set_attributes", object, cell, attributes, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: just var-args, so concat them as a named vector
gtkContainerAddWithProperties <-
function(object, widget, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkContainer")
        checkPtrType(widget, "GtkWidget")

        w <- .RGtkCall("S_gtk_container_add_with_properties", object, widget, c(...), PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: more var-args, like above
gtkContainerChildSet <-
function(object, child, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkContainer")
        checkPtrType(child, "GtkWidget")

        w <- .RGtkCall("S_gtk_container_child_set", object, child, c(...), PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: var args, compile and coerce to strings
gtkContainerChildGet <-
function(object, child, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkContainer")
        checkPtrType(child, "GtkWidget")
        props <- as.character(c(...))

        w <- .RGtkCall("S_gtk_container_child_get", object, child, props, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: var args, make a vector of column ids
gtkTreeModelGet <-
function(object, iter, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTreeModel")
        checkPtrType(iter, "GtkTreeIter")
		cols <- as.integer(c(...))
		
        w <- .RGtkCall("S_gtk_tree_model_get", object, iter, cols, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: var args, make a vector of indices

gtkTreePathNewFromIndices <-
function(..., .flush = TRUE, .depwarn = TRUE)
{
        indices <- as.integer(c(...))

        w <- .RGtkCall("S_gtk_tree_path_new_from_indices", indices, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: var args, convert to named list

gtkTreeViewInsertColumnWithAttributes <-
function(object, position, title, cell, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTreeView")
        position <- as.integer(position)
        title <- as.character(title)
        checkPtrType(cell, "GtkCellRenderer")
		attributes <- lapply(c(...), as.integer)
		
        w <- .RGtkCall("S_gtk_tree_view_insert_column_with_attributes", object, position, title, cell, attributes, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: NULL terminate var args

gtkTextBufferInsertWithTags <-
function(object, iter, text, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTextBuffer")
        checkPtrType(iter, "GtkTextIter")
        text <- as.character(text)
		tags <- list(...)
		checkArrType(tags, function(x) checkPtrType(x, "GtkTextTag"))

        w <- .RGtkCall("S_gtk_text_buffer_insert_with_tags", object, iter, text, -1, tags, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: same as above

gtkTextBufferInsertWithTagsByName <-
function(object, iter, text, ..., .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTextBuffer")
        checkPtrType(iter, "GtkTextIter")
        text <- as.character(text)
		tagNames <- list(...)
		tagNames <- as.character(tagNames)

        w <- .RGtkCall("S_gtk_text_buffer_insert_with_tags_by_name", object, iter, text, -1, tagNames, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: alias for capitalization
gtkUIManagerAddUIFromString <- gtkUIManagerAddUiFromString

# reason: redirect to set_with_data, GObject confuses code generator
gtkClipboardSetWithOwner <-
function(object, targets, get.func, owner = NULL, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkClipboard")
        targets <- checkArrType(targets, function(x) {x <- as.GtkTargetEntry(x); x })
        get.func <- as.function(get.func)
        if (!is.null( owner )) checkPtrType(owner, "GObject")

        w <- .RGtkCall("S_gtk_clipboard_set_with_data", object, targets, get.func, owner, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: position arg is omitted automatically, due to array

gtkListStoreInsertWithValuesv <-
function(object, position, columns, values, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkListStore")
		position <- as.integer(position)
        columns <- checkArrType(columns, function(x) { x <- as.integer(x); x })
        values <- checkArrType(values)

        w <- .RGtkCall("S_gtk_list_store_insert_with_valuesv", object, position, columns, values, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: here are some functions where we just leave off the text length parameter for convenience
gtkTextBufferInsertInteractive <-
function(object, iter, text, default.editable, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTextBuffer")
        checkPtrType(iter, "GtkTextIter")
        text <- as.character(text)
        default.editable <- as.logical(default.editable)

        w <- .RGtkCall("S_gtk_text_buffer_insert_interactive", object, iter, text, -1, default.editable, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}
gtkTextBufferInsertInteractiveAtCursor <-
function(object, text, default.editable, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTextBuffer")
        text <- as.character(text)
        default.editable <- as.logical(default.editable)

        w <- .RGtkCall("S_gtk_text_buffer_insert_interactive_at_cursor", object, text, -1, default.editable, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}
gtkIMContextSetSurrounding <-
function(object, text, cursor.index, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkIMContext")
        text <- as.character(text)
        cursor.index <- as.integer(cursor.index)

        w <- .RGtkCall("S_gtk_im_context_set_surrounding", object, text, -1, cursor.index, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: this one leaves off dimensions that must be user specified
gtkIMContextSimpleAddTable <-
function(object, data, max.seq.len, n.seqs, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkIMContextSimple")
        data <- as.list(as.integer(data))
		max.seq.len <- as.integer(max.seq.len)
        n.seqs <- as.integer(n.seqs)

        w <- .RGtkCall("S_gtk_im_context_simple_add_table", object, data, max.seq.len, n.seqs, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: for convenience give default for data length parameter
gtkSelectionDataSet <-
function(object, type, format, data, length = length(data), .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkSelectionData")
        type <- as.GdkAtom(type)
        format <- as.integer(format)
        data <- as.list(as.integer(data))
        length <- as.integer(length)

        w <- .RGtkCall("S_gtk_selection_data_set", object, type, format, data, length, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: need to omit the length param here - string arrays are normally NULL-terminated
gtkIconThemeSetSearchPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkIconTheme")
        path <- as.list(as.character(path))
        
        w <- .RGtkCall("S_gtk_icon_theme_set_search_path", object, path, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# EXPERIMENTAL LIST STORE ACCESS
gtkListStoreLoad <-
function(object, data, rows, cols = 0:(length(data)-1), paths = NULL, append=F, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkListStore")
		
		col.names <- object$getData("colnames")
		if (is.null(col.names)) {
			col.names <- character(object$getNColumns())
			col.names[cols+1] <- names(data)
			object$setData("colnames", col.names)
		}
		
        data <- lapply(data, as.list)
		if (is.character(cols)) {
			m <- match(cols, col.names)
			cols[!is.na(m)] <- m[!is.na(m)]-1
		}
		cols <- as.integer(cols)
		
		sort <- object$getSortColumnId()
		sorted <- sort["sort_column_id"] %in% cols
		if (sorted)
			object$setSortColumnId(-2, sort[["order"]]) # -2 means unsorted
		
		if (missing(paths) && !append) {
			if (missing(rows) || is.null(rows))
				rows <- 0:(length(data[[1]])-1)
			rows <- as.integer(rows)
			w <- .RGtkCall("S_gtk_list_store_load", object, data, rows, cols, PACKAGE = "RGtk", .flush = .flush)
		} else {
			paths <- lapply(paths, function(path) { checkPtrType(path, "GtkTreePath"); path })
			w <- .RGtkCall("S_gtk_list_store_load_paths", object, data, paths, cols, append, PACKAGE = "RGtk", .flush = .flush)
		}
		
		if (sorted)
			object$setSortColumnId(sort[["sort_column_id"]], sort[["order"]]) 
		
        return(invisible(w))
}
gtkTreeModelUnload <-
function(object, rows = NULL, cols = 0:(object$getNColumns()-1), paths, frame = T, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GtkTreeModel")
		
		col.names <- object$getData("colnames")
		if (is.character(cols) && !is.null(col.names)) {
			m <- match(cols, col.names)
			cols[!is.na(m)] <- m[!is.na(m)]-1
		}
		cols <- as.integer(cols)
		
		if(missing(paths)) {
			rows <- as.integer(rows)
			w <- .RGtkCall("S_gtk_tree_model_unload", object, rows, cols, PACKAGE = "RGtk", .flush = .flush)
		} else {
			paths <- lapply(paths, function(path) { checkPtrType(path, "GtkTreePath"); path })
			w <- .RGtkCall("S_gtk_tree_model_unload_paths", object, paths, cols, PACKAGE = "RGtk", .flush = .flush)
		}
		
		if (frame)
			w <- as.data.frame(sapply(w, unlist))
		
		if (length(w) > 0 && length(col.names) > 0) {
			names(w) <- col.names[cols+1]
		}
        
		return(w)
}

"[<-.GtkListStore" <-
function(model, rows = NULL, cols = 0:(length(data)-1), value) {
	model$load(value, rows, cols)
	model
}
"[.GtkListStore" <-
function(model, rows = NULL, cols = 0:(object$getNColumns()-1)) {
	model$unload(rows, cols)
}

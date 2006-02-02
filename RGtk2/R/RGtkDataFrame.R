# The goal of the RGtkDataFrame is to provide a (flat) GtkTreeModel implementation
# that responds to the familiar subset and replacement operators for data frames
# with minimal performance lost relative to a native data frame.

# This allows the R programmer to interact with the GUI without sacrificing
# familiarity and speed.

"[<-.RGtkDataFrame" <-
function(x, i, j, value)
{
	frame <- as.data.frame(x)
	
	old_nrow <- nrow(frame)
	old_ncol <- ncol(frame)
	
	if (missing(i))
		i <- 1:old_nrow
	if (missing(j))
		j <- 1:old_ncol
	
	frame[i, j] <- value
	
	if (is.character(i))
		i <- match(i, rownames(frame))
	if (is.character(j))
		j <- match(j, colnames(frame))
	
	changed <- integer(0)
	if (length(unique(j)) > ncol(frame) - old_ncol)
		changed <- i # existing columns changed, all specified rows "changed"
	else if (nrow(frame) > old_nrow) # otherwise, just add new rows
		changed <- ((old_nrow+1):nrow(frame))
	
	.RGtkCall("R_rgtk_data_frame_set", x, frame, as.list(changed-1))
	
	x
}

"[.RGtkDataFrame" <- function(x, i, j)
{
	frame <- as.data.frame(x)
	if (!missing(i) && length(i) > 0 && inherits(i[[1]], "GtkTreePath"))
		i <- .RGtkCall("R_gtk_tree_paths_to_indices", i)+1
	frame[i, j]
}

rGtkDataFrame <- rGtkDataFrameNew <- function(frame = data.frame())
{
	w <- .RGtkCall("R_rgtk_data_frame_new", frame)
	w
}

as.data.frame.RGtkDataFrame <- function(x, ...) .RGtkCall("R_rgtk_data_frame_get", x)

rGtkDataFrameAppendRows <- function(x, ...) {
	frame <- as.data.frame(x)
	new_frame <- rbind(frame, ...)
	new_ind <- (nrow(frame)+1):nrow(new_frame)
	if (nrow(new_frame) > nrow(frame))
		.RGtkCall("R_rgtk_data_frame_set", x, new_frame, as.list(new_ind-1))
	x
}
rGtkDataFrameAppendColumns <- function(x, ...) {
	frame <- as.data.frame(x)
	new_frame <- cbind(frame, ...)
	if (ncol(new_frame) > ncol(frame))
		.RGtkCall("R_rgtk_data_frame_set", x, new_frame, NULL)
	x
}

dimnames.RGtkDataFrame <- function(x, ...) {
	dimnames(as.data.frame(x))
}

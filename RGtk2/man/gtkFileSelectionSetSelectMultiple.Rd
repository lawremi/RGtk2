\alias{gtkFileSelectionSetSelectMultiple}
\name{gtkFileSelectionSetSelectMultiple}
\title{gtkFileSelectionSetSelectMultiple}
\description{
Sets whether the user is allowed to select multiple files in the file list.
Use \code{\link{gtkFileSelectionGetSelections}} to get the list of selected files.
\strong{WARNING: \code{gtk_file_selection_set_select_multiple} is deprecated and should not be used in newly-written code.}
}
\usage{gtkFileSelectionSetSelectMultiple(object, select.multiple)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileSelection}}}
\item{\verb{select.multiple}}{whether or not the user is allowed to select multiple
files in the file list.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

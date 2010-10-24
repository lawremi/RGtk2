\alias{gtkFileSelectionGetFilename}
\name{gtkFileSelectionGetFilename}
\title{gtkFileSelectionGetFilename}
\description{
This function returns the selected filename in the GLib file name
encoding. To convert to UTF-8, call \code{gFilenameToUtf8()}. The
returned string points to a statically allocated buffer and should
be copied if you plan to keep it around.
\strong{WARNING: \code{gtk_file_selection_get_filename} is deprecated and should not be used in newly-written code.}
}
\usage{gtkFileSelectionGetFilename(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileSelection}}}}
\details{If no file is selected then the selected directory path is returned.}
\value{[character]  currently-selected filename in the on-disk encoding.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkFileSelectionGetSelections}
\name{gtkFileSelectionGetSelections}
\title{gtkFileSelectionGetSelections}
\description{Retrieves the list of file selections the user has made in the dialog box.
This function is intended for use when the user can select multiple files
in the file list. }
\usage{gtkFileSelectionGetSelections(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkFileSelection}}]  a \code{\link{GtkFileSelection}}}}
\details{The filenames are in the GLib file name encoding. To convert to
UTF-8, call \code{g\Filename\To\Utf8()} on each string.  }
\value{[character]  a newly-allocated list of strings. Use
\code{g\Strfreev()} to free it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

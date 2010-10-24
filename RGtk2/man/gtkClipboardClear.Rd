\alias{gtkClipboardClear}
\name{gtkClipboardClear}
\title{gtkClipboardClear}
\description{Clears the contents of the clipboard. Generally this should only
be called between the time you call \code{\link{gtkClipboardSetWithOwner}}
or \code{\link{gtkClipboardSetWithData}},
and when the \code{clear.func} you supplied is called. Otherwise,}
\usage{gtkClipboardClear(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkClipboard}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkLabelSetPattern}
\name{gtkLabelSetPattern}
\title{gtkLabelSetPattern}
\description{The pattern of underlines you want under the existing text within the
\code{\link{GtkLabel}} widget.  For example if the current text of the label says
"FooBarBaz" passing a pattern of "\_\_\_   \_\_\_" will underline
"Foo" and "Baz" but not "Bar".}
\usage{gtkLabelSetPattern(object, pattern)}
\arguments{
\item{\code{object}}{[\code{\link{GtkLabel}}] The \code{\link{GtkLabel}} you want to set the pattern to.}
\item{\code{pattern}}{[character] The pattern as described above.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

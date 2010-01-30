\alias{gtkLabelSetPattern}
\name{gtkLabelSetPattern}
\title{gtkLabelSetPattern}
\description{The pattern of underlines you want under the existing text within the
\verb{\link{GtkLabel}} widget.  For example if the current text of the label says
"FooBarBaz" passing a pattern of "___   ___" will underline
"Foo" and "Baz" but not "Bar".}
\usage{gtkLabelSetPattern(object, pattern)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkLabel}}] The \verb{\link{GtkLabel}} you want to set the pattern to.}
\item{\verb{pattern}}{[character] The pattern as described above.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkTextViewStartsDisplayLine}
\name{gtkTextViewStartsDisplayLine}
\title{gtkTextViewStartsDisplayLine}
\description{Determines whether \code{iter} is at the start of a display line.
See \code{\link{gtkTextViewForwardDisplayLine}} for an explanation of
display lines vs. paragraphs.}
\usage{gtkTextViewStartsDisplayLine(object, iter)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{iter}}{a \code{\link{GtkTextIter}}}
}
\value{[logical] \code{TRUE} if \code{iter} begins a wrapped line}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

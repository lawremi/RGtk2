\alias{gtkTextViewBackwardDisplayLine}
\name{gtkTextViewBackwardDisplayLine}
\title{gtkTextViewBackwardDisplayLine}
\description{Moves the given \code{iter} backward by one display (wrapped) line.
A display line is different from a paragraph. Paragraphs are
separated by newlines or other paragraph separator characters.
Display lines are created by line-wrapping a paragraph. If
wrapping is turned off, display lines and paragraphs will be the
same. Display lines are divided differently for each view, since
they depend on the view's width; paragraphs are the same in all
views, since they depend on the contents of the \code{\link{GtkTextBuffer}}.}
\usage{gtkTextViewBackwardDisplayLine(object, iter)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{iter}}{a \code{\link{GtkTextIter}}}
}
\value{[logical] \code{TRUE} if \code{iter} was moved and is not on the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

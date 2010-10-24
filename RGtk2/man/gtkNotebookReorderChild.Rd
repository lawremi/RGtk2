\alias{gtkNotebookReorderChild}
\name{gtkNotebookReorderChild}
\title{gtkNotebookReorderChild}
\description{Reorders the page containing \code{child}, so that it appears in position
\code{position}. If \code{position} is greater than or equal to the number of
children in the list or negative, \code{child} will be moved to the end
of the list.}
\usage{gtkNotebookReorderChild(object, child, position)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the child to move}
\item{\verb{position}}{the new position, or -1 to move to the end}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

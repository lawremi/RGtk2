\alias{gtkListClearItems}
\name{gtkListClearItems}
\title{gtkListClearItems}
\description{
Removes the items between index \code{start} (included) and \code{end} (excluded)
from the \code{list}. If \code{end} is negative, or greater than the number of
children of \code{list}, it's assumed to be exactly the number of
elements. If \code{start} is greater than or equal to \code{end}, nothing is
done.
\strong{WARNING: \code{gtk_list_clear_items} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListClearItems(object, start, end)}
\arguments{
\item{\verb{object}}{the list widget.}
\item{\verb{start}}{the index of the first item to remove.}
\item{\verb{end}}{the index of the lest item to remove plus one.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

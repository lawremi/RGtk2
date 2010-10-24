\alias{gtkListUnselectItem}
\name{gtkListUnselectItem}
\title{gtkListUnselectItem}
\description{
Unselects the child number \code{item} of the \code{list}. Nothing happens if
\code{item} is out of bounds. The signal GtkList::unselect-child will be
emitted.
\strong{WARNING: \code{gtk_list_unselect_item} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListUnselectItem(object, item)}
\arguments{
\item{\verb{object}}{the list widget.}
\item{\verb{item}}{the index of the child to unselect.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

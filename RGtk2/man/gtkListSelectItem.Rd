\alias{gtkListSelectItem}
\name{gtkListSelectItem}
\title{gtkListSelectItem}
\description{
Selects the child number \code{item} of the \code{list}. Nothing happens if \code{item}
is out of bounds. The signal GtkList::select-child will be emitted.
\strong{WARNING: \code{gtk_list_select_item} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListSelectItem(object, item)}
\arguments{
\item{\verb{object}}{the list widget.}
\item{\verb{item}}{the index of the child to select.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

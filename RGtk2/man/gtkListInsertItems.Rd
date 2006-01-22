\alias{gtkListInsertItems}
\name{gtkListInsertItems}
\title{gtkListInsertItems}
\description{
Inserts \code{items} into the \code{list} at the position \code{position}.
\strong{WARNING: \code{gtk_list_insert_items} is deprecated and should not be used in newly-written code.  
Inserts \code{items} into the \code{list} at the position \code{position}. The \code{list} items
must not be freed after.}
}
\usage{gtkListInsertItems(object, items, position)}
\arguments{
\item{\code{object}}{[\code{\link{GtkList}}] the list widget.}
\item{\code{items}}{[list] the items.}
\item{\code{position}}{[integer] the position to insert \code{items}, starting at 0.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

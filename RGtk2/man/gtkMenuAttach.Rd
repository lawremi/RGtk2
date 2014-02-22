\alias{gtkMenuAttach}
\name{gtkMenuAttach}
\title{gtkMenuAttach}
\description{Adds a new \code{\link{GtkMenuItem}} to a (table) menu. The number of 'cells' that
an item will occupy is specified by \code{left.attach}, \code{right.attach},
\code{top.attach} and \code{bottom.attach}. These each represent the leftmost,
rightmost, uppermost and lower column and row numbers of the table.
(Columns and rows are indexed from zero).}
\usage{gtkMenuAttach(object, child, left.attach, right.attach, top.attach, 
    bottom.attach)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenu}}.}
\item{\verb{child}}{a \code{\link{GtkMenuItem}}.}
\item{\verb{left.attach}}{The column number to attach the left side of the item to.}
\item{\verb{right.attach}}{The column number to attach the right side of the item to.}
\item{\verb{top.attach}}{The row number to attach the top of the item to.}
\item{\verb{bottom.attach}}{The row number to attach the bottom of the item to.}
}
\details{Note that this function is not related to \code{\link{gtkMenuDetach}}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkTreeViewColumnSetSortOrder}
\name{gtkTreeViewColumnSetSortOrder}
\title{gtkTreeViewColumnSetSortOrder}
\description{Changes the appearance of the sort indicator. }
\usage{gtkTreeViewColumnSetSortOrder(object, order)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeViewColumn}}}
\item{\verb{order}}{sort order that the sort indicator should indicate}
}
\details{This \emph{does not} actually sort the model.  Use
\code{\link{gtkTreeViewColumnSetSortColumnId}} if you want automatic sorting
support.  This function is primarily for custom sorting behavior, and should
be used in conjunction with \code{gtkTreeSortableSetSortColumn()} to do
that. For custom models, the mechanism will vary. 
  
The sort indicator changes direction to indicate normal sort or reverse sort.
Note that you must have the sort indicator enabled to see anything when 
calling this function; see \code{\link{gtkTreeViewColumnSetSortIndicator}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

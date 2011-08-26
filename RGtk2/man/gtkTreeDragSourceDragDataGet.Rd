\alias{gtkTreeDragSourceDragDataGet}
\name{gtkTreeDragSourceDragDataGet}
\title{gtkTreeDragSourceDragDataGet}
\description{Asks the \code{\link{GtkTreeDragSource}} to fill in \code{selection.data} with a
representation of the row at \code{path}. \code{selection.data->target} gives
the required type of the data.  Should robustly handle a \code{path} no
longer found in the model!}
\usage{gtkTreeDragSourceDragDataGet(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeDragSource}}}
\item{\verb{path}}{row that was dragged}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if data of the required type was provided}
\item{\verb{selection.data}}{a \code{\link{GtkSelectionData}} to fill with data from the dragged row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkTreeDragSourceDragDataDelete}
\name{gtkTreeDragSourceDragDataDelete}
\title{gtkTreeDragSourceDragDataDelete}
\description{Asks the \code{\link{GtkTreeDragSource}} to delete the row at \code{path}, because
it was moved somewhere else via drag-and-drop. Returns \code{FALSE}
if the deletion fails because \code{path} no longer exists, or for
some model-specific reason. Should robustly handle a \code{path} no
longer found in the model!}
\usage{gtkTreeDragSourceDragDataDelete(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeDragSource}}}
\item{\verb{path}}{row that was being dragged}
}
\value{[logical] \code{TRUE} if the row was successfully deleted}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

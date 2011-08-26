\alias{gtkTreeDragDestDragDataReceived}
\name{gtkTreeDragDestDragDataReceived}
\title{gtkTreeDragDestDragDataReceived}
\description{Asks the \code{\link{GtkTreeDragDest}} to insert a row before the path \code{dest},
deriving the contents of the row from \code{selection.data}. If \code{dest} is
outside the tree so that inserting before it is impossible, \code{FALSE}
will be returned. Also, \code{FALSE} may be returned if the new row is
not created for some model-specific reason.  Should robustly handle
a \code{dest} no longer found in the model!}
\usage{gtkTreeDragDestDragDataReceived(object, dest, selection.data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeDragDest}}}
\item{\verb{dest}}{row to drop in front of}
\item{\verb{selection.data}}{data to drop}
}
\value{[logical] whether a new row was created before position \code{dest}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

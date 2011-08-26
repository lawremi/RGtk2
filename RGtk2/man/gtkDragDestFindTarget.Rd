\alias{gtkDragDestFindTarget}
\name{gtkDragDestFindTarget}
\title{gtkDragDestFindTarget}
\description{Looks for a match between \code{context->targets} and the
\code{dest.target.list}, returning the first matching target, otherwise
returning \code{GDK_NONE}. \code{dest.target.list} should usually be the return
value from \code{\link{gtkDragDestGetTargetList}}, but some widgets may
have different valid targets for different parts of the widget; in
that case, they will have to implement a drag_motion handler that
passes the correct target list to this function.}
\usage{gtkDragDestFindTarget(object, context, target.list)}
\arguments{
\item{\verb{object}}{drag destination widget}
\item{\verb{context}}{drag context}
\item{\verb{target.list}}{list of droppable targets, or \code{NULL} to use
gtk_drag_dest_get_target_list (\code{widget}). \emph{[  \acronym{allow-none}  ]}}
}
\value{[\code{\link{GdkAtom}}] first target that the source offers and the dest can accept, or \code{GDK_NONE}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

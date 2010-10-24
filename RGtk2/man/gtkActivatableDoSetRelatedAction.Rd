\alias{gtkActivatableDoSetRelatedAction}
\name{gtkActivatableDoSetRelatedAction}
\title{gtkActivatableDoSetRelatedAction}
\description{This is a utility function for \code{\link{GtkActivatable}} implementors.}
\usage{gtkActivatableDoSetRelatedAction(object, action)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkActivatable}}}
\item{\verb{action}}{the \code{\link{GtkAction}} to set}
}
\details{When implementing \code{\link{GtkActivatable}} you must call this when
handling changes of the \verb{"related-action"}, and
you must also use this to break references in \code{\link{GObject}}->\code{dispose()}.
  
This function adds a reference to the currently set related
action for you, it also makes sure the \code{\link{GtkActivatable}}->\code{update()}
method is called when the related \code{\link{GtkAction}} properties change
and registers to the action's proxy list.
  \strong{PLEASE NOTE:} Be careful to call this before setting the local
copy of the \code{\link{GtkAction}} property, since this function uses 
\code{gtkActivatableGetAction()} to retrieve the previous action  Since 2.16}
\note{Be careful to call this before setting the local
copy of the \code{\link{GtkAction}} property, since this function uses 
\code{gtkActivatableGetAction()} to retrieve the previous action}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

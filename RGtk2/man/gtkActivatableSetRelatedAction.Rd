\alias{gtkActivatableSetRelatedAction}
\name{gtkActivatableSetRelatedAction}
\title{gtkActivatableSetRelatedAction}
\description{Sets the related action on the \code{activatable} object.}
\usage{gtkActivatableSetRelatedAction(object, action)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkActivatable}}}
\item{\verb{action}}{the \code{\link{GtkAction}} to set}
}
\details{\strong{PLEASE NOTE:} \code{\link{GtkActivatable}} implementors need to handle the \verb{"related-action"}
property and call \code{\link{gtkActivatableDoSetRelatedAction}} when it changes.  Since 2.16}
\note{\code{\link{GtkActivatable}} implementors need to handle the \verb{"related-action"}
property and call \code{\link{gtkActivatableDoSetRelatedAction}} when it changes.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

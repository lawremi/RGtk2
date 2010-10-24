\alias{gtkActionGroupAddAction}
\name{gtkActionGroupAddAction}
\title{gtkActionGroupAddAction}
\description{Adds an action object to the action group. Note that this function
does not set up the accel path of the action, which can lead to problems
if a user tries to modify the accelerator of a menuitem associated with
the action. Therefore you must either set the accel path yourself with
\code{\link{gtkActionSetAccelPath}}, or use 
\code{gtk_action_group_add_action_with_accel (..., NULL)}.}
\usage{gtkActionGroupAddAction(object, action)}
\arguments{
\item{\verb{object}}{the action group}
\item{\verb{action}}{an action}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

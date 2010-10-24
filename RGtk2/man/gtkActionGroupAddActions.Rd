\alias{gtkActionGroupAddActions}
\name{gtkActionGroupAddActions}
\title{gtkActionGroupAddActions}
\description{This is a convenience function to create a number of actions and add them 
to the action group.}
\usage{gtkActionGroupAddActions(object, entries, user.data = NULL)}
\arguments{
\item{\verb{object}}{the action group}
\item{\verb{entries}}{a list of action descriptions}
\item{\verb{user.data}}{data to pass to the action callbacks}
}
\details{The "activate" signals of the actions are connected to the callbacks and 
their accel paths are set to 
\code{<Actions>/  \\var{group-name}  /  \\var{action-name}}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

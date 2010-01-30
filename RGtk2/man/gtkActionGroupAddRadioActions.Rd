\alias{gtkActionGroupAddRadioActions}
\name{gtkActionGroupAddRadioActions}
\title{gtkActionGroupAddRadioActions}
\description{This is a convenience routine to create a group of radio actions and
add them to the action group. }
\usage{gtkActionGroupAddRadioActions(object, entries, value, on.change = NULL, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkActionGroup}}]  the action group}
\item{\verb{entries}}{[\verb{\link{GtkRadioActionEntry}}]  a list of radio action descriptions}
\item{\verb{value}}{[integer]  the value of the action to activate initially, or -1 if
  no action should be activated}
\item{\verb{on.change}}{[GCallback]  the callback to connect to the changed signal}
\item{\verb{user.data}}{[R object]  data to pass to the action callbacks}
}
\details{The "changed" signal of the first radio action is connected to the 
\code{on.change} callback and the accel paths of the actions are set to 
\code{<Actions>/}.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

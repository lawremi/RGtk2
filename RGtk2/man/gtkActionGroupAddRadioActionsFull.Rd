\alias{gtkActionGroupAddRadioActionsFull}
\name{gtkActionGroupAddRadioActionsFull}
\title{gtkActionGroupAddRadioActionsFull}
\description{This variant of \code{\link{gtkActionGroupAddRadioActions}} adds a 
\code{GDestroyNotify} callback for \code{user.data}.}
\usage{gtkActionGroupAddRadioActionsFull(object, entries, value, on.change = NULL, user.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkActionGroup}}]  the action group}
\item{\code{entries}}{[\code{\link{GtkRadioActionEntry}}]  a list of radio action descriptions}
\item{\code{value}}{[integer]  the value of the action to activate initially, or -1 if
  no action should be activated}
\item{\code{on.change}}{[GCallback]  the callback to connect to the changed signal}
\item{\code{user.data}}{[R object]  data to pass to the action callbacks}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

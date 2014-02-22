\alias{gtkActionGroupAddRadioActionsFull}
\name{gtkActionGroupAddRadioActionsFull}
\title{gtkActionGroupAddRadioActionsFull}
\description{This variant of \code{\link{gtkActionGroupAddRadioActions}} adds a 
\verb{GDestroyNotify} callback for \code{user.data}.}
\usage{gtkActionGroupAddRadioActionsFull(object, entries, value, on.change = NULL, 
    user.data = NULL)}
\arguments{
\item{\verb{object}}{the action group}
\item{\verb{entries}}{a list of radio action descriptions}
\item{\verb{value}}{the value of the action to activate initially, or -1 if
no action should be activated}
\item{\verb{on.change}}{the callback to connect to the changed signal}
\item{\verb{user.data}}{data to pass to the action callbacks}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

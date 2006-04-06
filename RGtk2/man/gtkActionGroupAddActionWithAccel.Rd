\alias{gtkActionGroupAddActionWithAccel}
\name{gtkActionGroupAddActionWithAccel}
\title{gtkActionGroupAddActionWithAccel}
\description{Adds an action object to the action group and sets up the accelerator.}
\usage{gtkActionGroupAddActionWithAccel(object, action, accelerator = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkActionGroup}}]  the action group }
\item{\code{action}}{[\code{\link{GtkAction}}]  the action to add }
\item{\code{accelerator}}{[character]  the accelerator for the action, in
  the format understood by \code{\link{gtkAcceleratorParse}}, or "" for no accelerator, or 
  \code{NULL} to use the stock accelerator }
}
\details{If \code{accelerator} is \code{NULL}, attempts to use the accelerator associated 
with the stock\_id of the action. 
  
Accel paths are set to
\code{<Actions>/}.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

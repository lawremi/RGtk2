\alias{gtkActionGroupAddActionWithAccel}
\name{gtkActionGroupAddActionWithAccel}
\title{gtkActionGroupAddActionWithAccel}
\description{Adds an action object to the action group and sets up the accelerator.}
\usage{gtkActionGroupAddActionWithAccel(object, action, accelerator = NULL)}
\arguments{
\item{\verb{object}}{the action group}
\item{\verb{action}}{the action to add}
\item{\verb{accelerator}}{the accelerator for the action, in
the format understood by \code{\link{gtkAcceleratorParse}}, or "" for no accelerator, or
\code{NULL} to use the stock accelerator. \emph{[  \acronym{allow-none}  ]}}
}
\details{If \code{accelerator} is \code{NULL}, attempts to use the accelerator associated 
with the stock_id of the action. 
  
Accel paths are set to
\code{<Actions>/  \\var{group-name}  /  \\var{action-name}}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

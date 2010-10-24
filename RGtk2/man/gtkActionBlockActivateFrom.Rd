\alias{gtkActionBlockActivateFrom}
\name{gtkActionBlockActivateFrom}
\title{gtkActionBlockActivateFrom}
\description{
Disables calls to the \code{\link{gtkActionActivate}}
function by signals on the given proxy widget.  This is used to
break notification loops for things like check or radio actions.
\strong{WARNING: \code{gtk_action_block_activate_from} has been deprecated since version 2.16 and should not be used in newly-written code. activatables are now responsible for activating the
action directly so this doesnt apply anymore.}
}
\usage{gtkActionBlockActivateFrom(object, proxy)}
\arguments{
\item{\verb{object}}{the action object}
\item{\verb{proxy}}{a proxy widget}
}
\details{This function is intended for use by action implementations.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

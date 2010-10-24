\alias{gtkActionUnblockActivateFrom}
\name{gtkActionUnblockActivateFrom}
\title{gtkActionUnblockActivateFrom}
\description{
Re-enables calls to the \code{\link{gtkActionActivate}}
function by signals on the given proxy widget.  This undoes the
blocking done by \code{\link{gtkActionBlockActivateFrom}}.
\strong{WARNING: \code{gtk_action_unblock_activate_from} has been deprecated since version 2.16 and should not be used in newly-written code. activatables are now responsible for activating the
action directly so this doesnt apply anymore.}
}
\usage{gtkActionUnblockActivateFrom(object, proxy)}
\arguments{
\item{\verb{object}}{the action object}
\item{\verb{proxy}}{a proxy widget}
}
\details{This function is intended for use by action implementations.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

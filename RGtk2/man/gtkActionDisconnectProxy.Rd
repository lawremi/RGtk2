\alias{gtkActionDisconnectProxy}
\name{gtkActionDisconnectProxy}
\title{gtkActionDisconnectProxy}
\description{
Disconnects a proxy widget from an action.  
Does \emph{not} destroy the widget, however.
\strong{WARNING: \code{gtk_action_disconnect_proxy} has been deprecated since version 2.16 and should not be used in newly-written code. Use \code{\link{gtkActivatableSetRelatedAction}} instead.}
}
\usage{gtkActionDisconnectProxy(object, proxy)}
\arguments{
\item{\verb{object}}{the action object}
\item{\verb{proxy}}{the proxy widget}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

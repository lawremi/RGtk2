\alias{gtkActionConnectProxy}
\name{gtkActionConnectProxy}
\title{gtkActionConnectProxy}
\description{
Connects a widget to an action object as a proxy.  Synchronises 
various properties of the action with the widget (such as label 
text, icon, tooltip, etc), and attaches a callback so that the 
action gets activated when the proxy widget does.
\strong{WARNING: \code{gtk_action_connect_proxy} has been deprecated since version 2.16 and should not be used in newly-written code. Use \code{\link{gtkActivatableSetRelatedAction}} instead.}
}
\usage{gtkActionConnectProxy(object, proxy)}
\arguments{
\item{\verb{object}}{the action object}
\item{\verb{proxy}}{the proxy widget}
}
\details{If the widget is already connected to an action, it is disconnected
first.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

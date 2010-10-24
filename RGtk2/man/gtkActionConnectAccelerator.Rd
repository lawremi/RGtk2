\alias{gtkActionConnectAccelerator}
\name{gtkActionConnectAccelerator}
\title{gtkActionConnectAccelerator}
\description{Installs the accelerator for \code{action} if \code{action} has an
accel path and group. See \code{\link{gtkActionSetAccelPath}} and 
\code{\link{gtkActionSetAccelGroup}}}
\usage{gtkActionConnectAccelerator(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkAction}}}}
\details{Since multiple proxies may independently trigger the installation
of the accelerator, the \code{action} counts the number of times this
function has been called and doesn't remove the accelerator until
\code{\link{gtkActionDisconnectAccelerator}} has been called as many times.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

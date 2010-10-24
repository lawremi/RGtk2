\alias{gdkWindowProcessUpdates}
\name{gdkWindowProcessUpdates}
\title{gdkWindowProcessUpdates}
\description{Sends one or more expose events to \code{window}. The areas in each
expose event will cover the entire update area for the window (see
\code{\link{gdkWindowInvalidateRegion}} for details). Normally GDK calls
\code{\link{gdkWindowProcessAllUpdates}} on your behalf, so there's no
need to call this function unless you want to force expose events
to be delivered immediately and synchronously (vs. the usual
case, where GDK delivers them in an idle handler). Occasionally
this is useful to produce nicer scrolling behavior, for example.}
\usage{gdkWindowProcessUpdates(object, update.children)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{update.children}}{whether to also process updates for child windows}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

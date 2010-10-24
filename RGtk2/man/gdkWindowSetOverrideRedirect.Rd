\alias{gdkWindowSetOverrideRedirect}
\name{gdkWindowSetOverrideRedirect}
\title{gdkWindowSetOverrideRedirect}
\description{An override redirect window is not under the control of the window manager.
This means it won't have a titlebar, won't be minimizable, etc. - it will
be entirely under the control of the application. The window manager
can't see the override redirect window at all.}
\usage{gdkWindowSetOverrideRedirect(object, override.redirect)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{override.redirect}}{\code{TRUE} if window should be override redirect}
}
\details{Override redirect should only be used for short-lived temporary
windows, such as popup menus. \code{\link{GtkMenu}} uses an override redirect
window in its implementation, for example.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

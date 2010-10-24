\alias{gdkWindowSetGroup}
\name{gdkWindowSetGroup}
\title{gdkWindowSetGroup}
\description{Sets the group leader window for \code{window}. By default,
GDK sets the group leader for all toplevel windows
to a global window implicitly created by GDK. With this function
you can override this default.}
\usage{gdkWindowSetGroup(object, leader)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{leader}}{group leader window, or \code{NULL} to restore the default group leader window}
}
\details{The group leader window allows the window manager to distinguish
all windows that belong to a single application. It may for example
allow users to minimize/unminimize all windows belonging to an
application at once. You should only set a non-default group window
if your application pretends to be multiple applications.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

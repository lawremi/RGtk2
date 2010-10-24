\alias{gdkWindowSetRole}
\name{gdkWindowSetRole}
\title{gdkWindowSetRole}
\description{When using GTK+, typically you should use \code{\link{gtkWindowSetRole}} instead
of this low-level function.}
\usage{gdkWindowSetRole(object, role)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{role}}{a string indicating its role}
}
\details{The window manager and session manager use a window's role to
distinguish it from other kinds of window in the same application.
When an application is restarted after being saved in a previous
session, all windows with the same title and role are treated as
interchangeable.  So if you have two windows with the same title
that should be distinguished for session management purposes, you
should set the role on those windows. It doesn't matter what string
you use for the role, as long as you have a different role for each
non-interchangeable kind of window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

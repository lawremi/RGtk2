\alias{gdkWindowSetTransientFor}
\name{gdkWindowSetTransientFor}
\title{gdkWindowSetTransientFor}
\description{Indicates to the window manager that \code{window} is a transient dialog
associated with the application window \code{parent}. This allows the
window manager to do things like center \code{window} on \code{parent} and
keep \code{window} above \code{parent}.}
\usage{gdkWindowSetTransientFor(object, leader)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{leader}}{another toplevel \code{\link{GdkWindow}}}
}
\details{See \code{\link{gtkWindowSetTransientFor}} if you're using \code{\link{GtkWindow}} or
\code{\link{GtkDialog}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkWindowSetTransientFor}
\name{gdkWindowSetTransientFor}
\title{gdkWindowSetTransientFor}
\description{Indicates to the window manager that \code{window} is a transient dialog
associated with the application window \code{parent}. This allows the
window manager to do things like center \code{window} on \code{parent} and
keep \code{window} above \code{parent}.}
\usage{gdkWindowSetTransientFor(object, leader)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a toplevel \verb{\link{GdkWindow}}}
\item{\verb{leader}}{[\verb{\link{GdkWindow}}]  another toplevel \verb{\link{GdkWindow}}}
}
\details{See \code{\link{gtkWindowSetTransientFor}} if you're using \verb{\link{GtkWindow}} or
\verb{\link{GtkDialog}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

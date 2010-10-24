\alias{gdkWindowFocus}
\name{gdkWindowFocus}
\title{gdkWindowFocus}
\description{Sets keyboard focus to \code{window}. In most cases, \code{\link{gtkWindowPresent}} 
should be used on a \code{\link{GtkWindow}}, rather than calling this function.}
\usage{gdkWindowFocus(object, timestamp = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{timestamp}}{timestamp of the event triggering the window focus}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

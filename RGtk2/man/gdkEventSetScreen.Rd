\alias{gdkEventSetScreen}
\name{gdkEventSetScreen}
\title{gdkEventSetScreen}
\description{Sets the screen for \code{event} to \code{screen}. The event must
have been allocated by GTK+, for instance, by
\code{\link{gdkEventCopy}}.}
\usage{gdkEventSetScreen(object, screen)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkEvent}}}
\item{\verb{screen}}{a \code{\link{GdkScreen}}}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

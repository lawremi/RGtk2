\alias{gSimpleAsyncReportGerrorInIdle}
\name{gSimpleAsyncReportGerrorInIdle}
\title{gSimpleAsyncReportGerrorInIdle}
\description{Reports an error in an idle function. Similar to 
\code{\link{gSimpleAsyncReportErrorInIdle}}, but takes a \code{\link{GError}} rather 
than building a new one.}
\usage{gSimpleAsyncReportGerrorInIdle(object, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GObject}}.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
}
\value{
A list containing the following elements:
\item{\verb{error}}{the \code{\link{GError}} to report}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkPrintSettingsGetLength}
\name{gtkPrintSettingsGetLength}
\title{gtkPrintSettingsGetLength}
\description{Returns the value associated with \code{key}, interpreted
as a length. The returned value is converted to \code{units}.}
\usage{gtkPrintSettingsGetLength(object, key, unit)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintSettings}}]  a \code{\link{GtkPrintSettings}}}
\item{\code{key}}{[character]  a key}
\item{\code{unit}}{[\code{\link{GtkUnit}}]  the unit of the return value}
}
\details{  Since  2.10}
\value{[numeric]  the length value of \code{key}, converted to \code{unit}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

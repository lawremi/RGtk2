\alias{gtkRcPropertyParseBorder}
\name{gtkRcPropertyParseBorder}
\title{gtkRcPropertyParseBorder}
\description{A \code{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses
borders in the form 
\code{"{ left, right, top, bottom }"} for integers 
\code{left}, \code{right}, \code{top} and \code{bottom}.}
\usage{gtkRcPropertyParseBorder(pspec, gstring)}
\arguments{
\item{\code{pspec}}{[\code{\link{GParamSpec}}]  a \code{\link{GParamSpec}}}
\item{\code{gstring}}{[character]  the \code{character} to be parsed}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting \code{\link{GtkBorder}}.}
\item{\code{property.value}}{[R object]  a \code{R object} which must hold boxed values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

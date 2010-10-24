\alias{gtkRcPropertyParseBorder}
\name{gtkRcPropertyParseBorder}
\title{gtkRcPropertyParseBorder}
\description{A \verb{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses
borders in the form 
\code{"{ left, right, top, bottom }"} for integers 
\code{left}, \code{right}, \code{top} and \code{bottom}.}
\usage{gtkRcPropertyParseBorder(pspec, gstring)}
\arguments{
\item{\verb{pspec}}{a \code{\link{GParamSpec}}}
\item{\verb{gstring}}{the \verb{character} to be parsed}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting \code{\link{GtkBorder}}.}
\item{\verb{property.value}}{a \verb{R object} which must hold boxed values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

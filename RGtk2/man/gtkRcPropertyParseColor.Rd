\alias{gtkRcPropertyParseColor}
\name{gtkRcPropertyParseColor}
\title{gtkRcPropertyParseColor}
\description{A \code{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses a
color given either by its name or in the form 
\code{{ red, green, blue }} where \code{red}, \code{green} and
\code{blue} are integers between 0 and 65535 or floating-point numbers
between 0 and 1.}
\usage{gtkRcPropertyParseColor(pspec, gstring)}
\arguments{
\item{\code{pspec}}{[\code{\link{GParamSpec}}]  a \code{\link{GParamSpec}}}
\item{\code{gstring}}{[character]  the \code{character} to be parsed}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting \code{\link{GdkColor}}.}
\item{\code{property.value}}{[R object]  a \code{R object} which must hold \code{\link{GdkColor}} values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

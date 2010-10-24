\alias{gtkRcPropertyParseEnum}
\name{gtkRcPropertyParseEnum}
\title{gtkRcPropertyParseEnum}
\description{A \verb{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses a single
enumeration value.}
\usage{gtkRcPropertyParseEnum(pspec, gstring)}
\arguments{
\item{\verb{pspec}}{a \code{\link{GParamSpec}}}
\item{\verb{gstring}}{the \verb{character} to be parsed}
}
\details{The enumeration value can be specified by its name, its nickname or
its numeric value. For consistency with flags parsing, the value
may be surrounded by parentheses.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting \verb{GEnumValue}.}
\item{\verb{property.value}}{a \verb{R object} which must hold enum values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

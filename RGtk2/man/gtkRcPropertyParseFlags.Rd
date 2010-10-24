\alias{gtkRcPropertyParseFlags}
\name{gtkRcPropertyParseFlags}
\title{gtkRcPropertyParseFlags}
\description{A \verb{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses flags. }
\usage{gtkRcPropertyParseFlags(pspec, gstring)}
\arguments{
\item{\verb{pspec}}{a \code{\link{GParamSpec}}}
\item{\verb{gstring}}{the \verb{character} to be parsed}
}
\details{Flags can be specified by their name, their nickname or
numerically. Multiple flags can be specified in the form 
\code{"( flag1 | flag2 | ... )"}.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting flags value.}
\item{\verb{property.value}}{a \verb{R object} which must hold flags values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

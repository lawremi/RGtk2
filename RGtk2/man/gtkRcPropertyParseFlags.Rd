\alias{gtkRcPropertyParseFlags}
\name{gtkRcPropertyParseFlags}
\title{gtkRcPropertyParseFlags}
\description{A \code{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses flags. }
\usage{gtkRcPropertyParseFlags(pspec, gstring)}
\arguments{
\item{\code{pspec}}{[\code{\link{GParamSpec}}]  a \code{\link{GParamSpec}}}
\item{\code{gstring}}{[character]  the \code{character} to be parsed}
}
\details{Flags can be specified by their name, their nickname or
numerically. Multiple flags can be specified in the form 
\code{"( flag1 | flag2 | ... )"}.  }
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting flags value.}
\item{\code{property.value}}{[R object]  a \code{R object} which must hold flags values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

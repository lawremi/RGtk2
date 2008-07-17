\alias{gtkRcPropertyParseRequisition}
\name{gtkRcPropertyParseRequisition}
\title{gtkRcPropertyParseRequisition}
\description{A \code{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses a
requisition in the form 
\code{"{ width, height }"} for integers \code{width} and \code{height}.}
\usage{gtkRcPropertyParseRequisition(pspec, gstring)}
\arguments{
\item{\code{pspec}}{[\code{\link{GParamSpec}}]  a \code{\link{GParamSpec}}}
\item{\code{gstring}}{[character]  the \code{character} to be parsed}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting \code{\link{GtkRequisition}}.}
\item{\code{property.value}}{[R object]  a \code{R object} which must hold boxed values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkRcPropertyParseRequisition}
\name{gtkRcPropertyParseRequisition}
\title{gtkRcPropertyParseRequisition}
\description{A \verb{GtkRcPropertyParser} for use with \code{\link{gtkSettingsInstallPropertyParser}}
or \code{\link{gtkWidgetClassInstallStylePropertyParser}} which parses a
requisition in the form 
\code{"{ width, height }"} for integers \code{width} and \code{height}.}
\usage{gtkRcPropertyParseRequisition(pspec, gstring)}
\arguments{
\item{\verb{pspec}}{[\verb{\link{GParamSpec}}]  a \verb{\link{GParamSpec}}}
\item{\verb{gstring}}{[character]  the \verb{character} to be parsed}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{gstring} could be parsed and \code{property.value}
has been set to the resulting \verb{\link{GtkRequisition}}.}
\item{\verb{property.value}}{[R object]  a \verb{R object} which must hold boxed values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

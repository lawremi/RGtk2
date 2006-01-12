\alias{gdkDeviceSetKey}
\name{gdkDeviceSetKey}
\title{gdkDeviceSetKey}
\description{Specifies the X key event to generate when a function button of a device
is pressed.}
\usage{gdkDeviceSetKey(object, index, keyval, modifiers)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDevice}}] a \code{\link{GdkDevice}}.}
\item{\code{index}}{[numeric] the index of the function button to set.}
\item{\code{keyval}}{[numeric] the keyval to generate.}
\item{\code{modifiers}}{[\code{\link{GdkModifierType}}] the modifiers to set.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

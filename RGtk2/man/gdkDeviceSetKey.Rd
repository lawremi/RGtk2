\alias{gdkDeviceSetKey}
\name{gdkDeviceSetKey}
\title{gdkDeviceSetKey}
\description{Specifies the X key event to generate when a function button of a device
is pressed.}
\usage{gdkDeviceSetKey(object, index, keyval, modifiers)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDevice}}] a \verb{\link{GdkDevice}}.}
\item{\verb{index}}{[numeric] the index of the function button to set.}
\item{\verb{keyval}}{[numeric] the keyval to generate.}
\item{\verb{modifiers}}{[\code{\link{GdkModifierType}}] the modifiers to set.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

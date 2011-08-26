\alias{gdkKeymapGetDirection}
\name{gdkKeymapGetDirection}
\title{gdkKeymapGetDirection}
\description{Returns the direction of effective layout of the keymap.}
\usage{gdkKeymapGetDirection(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkKeymap}} or \code{NULL} to use the default keymap}}
\details{Returns the direction of the keymap.}
\value{[\code{\link{PangoDirection}}] \code{PANGO_DIRECTION_LTR} or \code{PANGO_DIRECTION_RTL}
if it can determine the direction. \code{PANGO_DIRECTION_NEUTRAL}
otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

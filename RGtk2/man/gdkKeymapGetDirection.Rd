\alias{gdkKeymapGetDirection}
\name{gdkKeymapGetDirection}
\title{gdkKeymapGetDirection}
\description{\emph{undocumented
}}
\usage{gdkKeymapGetDirection(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkKeymap}}]  a \code{\link{GdkKeymap}} or \code{NULL} to use the default keymap}}
\details{Returns the direction of the keymap. }
\value{[\code{\link{PangoDirection}}] the direction of effective layout of the keymap.

\code{Returns}: \code{PANGO_DIRECTION_LTR} or \code{PANGO_DIRECTION_RTL} if determines the
direction.  \code{PANGO_DIRECTION_NEUTRAL} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{pangoUnicharDirection}
\name{pangoUnicharDirection}
\title{pangoUnicharDirection}
\description{Determines the direction of a character; either
\code{PANGO_DIRECTION_LTR}, \code{PANGO_DIRECTION_RTL}, or
\code{PANGO_DIRECTION_NEUTRAL}.}
\usage{pangoUnicharDirection(ch)}
\arguments{\item{\code{ch}}{[numeric]  a Unicode character}}
\value{[\code{\link{PangoDirection}}]  the direction of the character, as used in the
Unicode bidirectional algorithm.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

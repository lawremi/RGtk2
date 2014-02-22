\alias{pangoUnicharDirection}
\name{pangoUnicharDirection}
\title{pangoUnicharDirection}
\description{Determines the inherent direction of a character; either
\code{PANGO_DIRECTION_LTR}, \code{PANGO_DIRECTION_RTL}, or
\code{PANGO_DIRECTION_NEUTRAL}.}
\usage{pangoUnicharDirection(ch)}
\arguments{\item{\verb{ch}}{[numeric]  a Unicode character}}
\details{This function is useful to categorize characters into left-to-right
letters, right-to-left letters, and everything else.  If full
Unicode bidirectional type of a character is needed,
\code{pangoBidiTypeForGunichar()} can be used instead.  }
\value{[\code{\link{PangoDirection}}]  the direction of the character.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{pangoBidiTypeForUnichar}
\name{pangoBidiTypeForUnichar}
\title{pangoBidiTypeForUnichar}
\description{Determines the normative bidirectional character type of a
character, as specified in the Unicode Character Database.}
\usage{pangoBidiTypeForUnichar(ch)}
\arguments{\item{\verb{ch}}{[numeric]  a Unicode character}}
\details{A simplified version of this function is available as
\code{pangoUnicharGetDirection()}.  
  Since 1.22}
\value{[\code{\link{PangoBidiType}}]  the bidirectional character type, as used in the
Unicode bidirectional algorithm.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

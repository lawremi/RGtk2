\alias{pangoScriptForUnichar}
\name{pangoScriptForUnichar}
\title{pangoScriptForUnichar}
\description{Looks up the \code{\link{PangoScript}} for a particular character (as defined by
Unicode Standard Annex \code{24}). No check is made for \code{ch} being a
valid Unicode character; if you pass in invalid character, the
result is undefined.}
\usage{pangoScriptForUnichar(ch)}
\arguments{\item{\code{ch}}{[numeric]  a Unicode character}}
\details{  Since  1.4}
\value{[\code{\link{PangoScript}}]  the \code{\link{PangoScript}} for the character.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

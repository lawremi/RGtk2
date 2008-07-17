\alias{pangoFontDescriptionBetterMatch}
\name{pangoFontDescriptionBetterMatch}
\title{pangoFontDescriptionBetterMatch}
\description{Determines if the style attributes of \code{new.match} are a closer match
for \code{desc} than \code{old.match}, or if \code{old.match} is \code{NULL}, determines if
\code{new.match} is a match at all. Approximate matching is done for
weight and style; other attributes must match exactly.}
\usage{pangoFontDescriptionBetterMatch(object, old.match = NULL, new.match)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\code{old.match}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}, or \code{NULL}}
\item{\code{new.match}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
}
\value{[logical] \code{TRUE} if \code{new.match} is a better match}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

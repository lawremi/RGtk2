\alias{pangoFontDescriptionBetterMatch}
\name{pangoFontDescriptionBetterMatch}
\title{pangoFontDescriptionBetterMatch}
\description{Determines if the style attributes of \code{new.match} are a closer match
for \code{desc} than \code{old.match}, or if \code{old.match} is \code{NULL}, determines if
\code{new.match} is a match at all. Approximate matching is done for
weight and style; other attributes must match exactly.}
\usage{pangoFontDescriptionBetterMatch(object, old.match = NULL, new.match)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}}
\item{\verb{old.match}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}, or \code{NULL}}
\item{\verb{new.match}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}}
}
\value{[logical] \code{TRUE} if \code{new.match} is a better match}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

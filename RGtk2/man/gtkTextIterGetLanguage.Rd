\alias{gtkTextIterGetLanguage}
\name{gtkTextIterGetLanguage}
\title{gtkTextIterGetLanguage}
\description{A convenience wrapper around \code{\link{gtkTextIterGetAttributes}},
which returns the language in effect at \code{iter}. If no tags affecting
language apply to \code{iter}, the return value is identical to that of
\code{\link{gtkGetDefaultLanguage}}.}
\usage{gtkTextIterGetLanguage(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[\code{\link{PangoLanguage}}] language in effect at \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

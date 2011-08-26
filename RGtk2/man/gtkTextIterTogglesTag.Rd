\alias{gtkTextIterTogglesTag}
\name{gtkTextIterTogglesTag}
\title{gtkTextIterTogglesTag}
\description{This is equivalent to (\code{\link{gtkTextIterBeginsTag}} ||
\code{\link{gtkTextIterEndsTag}}), i.e. it tells you whether a range with
\code{tag} applied to it begins \emph{or} ends at \code{iter}.}
\usage{gtkTextIterTogglesTag(object, tag = NULL)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[logical] whether \code{tag} is toggled on or off at \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

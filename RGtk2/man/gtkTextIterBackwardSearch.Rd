\alias{gtkTextIterBackwardSearch}
\name{gtkTextIterBackwardSearch}
\title{gtkTextIterBackwardSearch}
\description{Same as \code{\link{gtkTextIterForwardSearch}}, but moves backward.}
\usage{gtkTextIterBackwardSearch(object, str, flags, limit = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}} where the search begins}
\item{\verb{str}}{search string}
\item{\verb{flags}}{bitmask of flags affecting the search}
\item{\verb{limit}}{location of last possible \code{match.start}, or \code{NULL} for start of buffer. \emph{[  \acronym{allow-none}  ]}}
}
\value{
A list containing the following elements:
\item{retval}{[logical] whether a match was found}
\item{\verb{match.start}}{return location for start of match, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{match.end}}{return location for end of match, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkTextIterBackwardSearch}
\name{gtkTextIterBackwardSearch}
\title{gtkTextIterBackwardSearch}
\description{Same as \code{\link{gtkTextIterForwardSearch}}, but moves backward.}
\usage{gtkTextIterBackwardSearch(object, str, flags, limit = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextIter}}]  a \verb{\link{GtkTextIter}} where the search begins}
\item{\verb{str}}{[character]  search string}
\item{\verb{flags}}{[\code{\link{GtkTextSearchFlags}}]  bitmask of flags affecting the search}
\item{\verb{limit}}{[\verb{\link{GtkTextIter}}]  location of last possible \code{match.start}, or \code{NULL} for start of buffer}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether a match was found}
\item{\verb{match.start}}{[\verb{\link{GtkTextIter}}]  return location for start of match, or \code{NULL}}
\item{\verb{match.end}}{[\verb{\link{GtkTextIter}}]  return location for end of match, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

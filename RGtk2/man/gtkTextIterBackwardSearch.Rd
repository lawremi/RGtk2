\alias{gtkTextIterBackwardSearch}
\name{gtkTextIterBackwardSearch}
\title{gtkTextIterBackwardSearch}
\description{Same as \code{\link{gtkTextIterForwardSearch}}, but moves backward.}
\usage{gtkTextIterBackwardSearch(object, str, flags, limit = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}} where the search begins}
\item{\code{str}}{[character]  search string}
\item{\code{flags}}{[\code{\link{GtkTextSearchFlags}}]  bitmask of flags affecting the search}
\item{\code{limit}}{[\code{\link{GtkTextIter}}]  location of last possible \code{match.start}, or \code{NULL} for start of buffer}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether a match was found}
\item{\code{match.start}}{[\code{\link{GtkTextIter}}]  return location for start of match, or \code{NULL}}
\item{\code{match.end}}{[\code{\link{GtkTextIter}}]  return location for end of match, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

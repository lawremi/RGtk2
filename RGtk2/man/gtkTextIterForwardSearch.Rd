\alias{gtkTextIterForwardSearch}
\name{gtkTextIterForwardSearch}
\title{gtkTextIterForwardSearch}
\description{Searches forward for \code{str}. Any match is returned by setting 
\code{match.start} to the first character of the match and \code{match.end} to the 
first character after the match. The search will not continue past
\code{limit}. Note that a search is a linear or O(n) operation, so you
may wish to use \code{limit} to avoid locking up your UI on large
buffers.}
\usage{gtkTextIterForwardSearch(object, str, flags, limit = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  start of search}
\item{\code{str}}{[character]  a search string}
\item{\code{flags}}{[\code{\link{GtkTextSearchFlags}}]  flags affecting how the search is done}
\item{\code{limit}}{[\code{\link{GtkTextIter}}]  bound for the search, or \code{NULL} for the end of the buffer}
}
\details{If the \code{GTK_TEXT_SEARCH_VISIBLE_ONLY} flag is present, the match may
have invisible text interspersed in \code{str}. i.e. \code{str} will be a
possibly-noncontiguous subsequence of the matched range. similarly,
if you specify \code{GTK_TEXT_SEARCH_TEXT_ONLY}, the match may have
pixbufs or child widgets mixed inside the matched range. If these
flags are not given, the match must be exact; the special 0xFFFC
character in \code{str} will match embedded pixbufs or child widgets.  }
\value{
A list containing the following elements:
\item{retval}{[logical]  whether a match was found}
\item{\code{match.start}}{[\code{\link{GtkTextIter}}]  return location for start of match, or \code{NULL}}
\item{\code{match.end}}{[\code{\link{GtkTextIter}}]  return location for end of match, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

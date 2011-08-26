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
\item{\verb{object}}{start of search}
\item{\verb{str}}{a search string}
\item{\verb{flags}}{flags affecting how the search is done}
\item{\verb{limit}}{bound for the search, or \code{NULL} for the end of the buffer. \emph{[  \acronym{allow-none}  ]}}
}
\details{If the \verb{GTK_TEXT_SEARCH_VISIBLE_ONLY} flag is present, the match may
have invisible text interspersed in \code{str}. i.e. \code{str} will be a
possibly-noncontiguous subsequence of the matched range. similarly,
if you specify \verb{GTK_TEXT_SEARCH_TEXT_ONLY}, the match may have
pixbufs or child widgets mixed inside the matched range. If these
flags are not given, the match must be exact; the special 0xFFFC
character in \code{str} will match embedded pixbufs or child widgets.}
\value{
A list containing the following elements:
\item{retval}{[logical] whether a match was found}
\item{\verb{match.start}}{return location for start of match, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{match.end}}{return location for end of match, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

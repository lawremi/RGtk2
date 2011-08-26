\alias{gtkTextIterForwardFindChar}
\name{gtkTextIterForwardFindChar}
\title{gtkTextIterForwardFindChar}
\description{Advances \code{iter}, calling \code{pred} on each character. If
\code{pred} returns \code{TRUE}, returns \code{TRUE} and stops scanning.
If \code{pred} never returns \code{TRUE}, \code{iter} is set to \code{limit} if
\code{limit} is non-\code{NULL}, otherwise to the end iterator.}
\usage{gtkTextIterForwardFindChar(object, pred, user.data = NULL, limit)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{pred}}{a function to be called on each character}
\item{\verb{user.data}}{user data for \code{pred}}
\item{\verb{limit}}{search limit, or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
}
\value{[logical] whether a match was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

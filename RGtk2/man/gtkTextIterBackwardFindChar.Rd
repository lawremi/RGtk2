\alias{gtkTextIterBackwardFindChar}
\name{gtkTextIterBackwardFindChar}
\title{gtkTextIterBackwardFindChar}
\description{Same as \code{\link{gtkTextIterForwardFindChar}}, but goes backward from \code{iter}.}
\usage{gtkTextIterBackwardFindChar(object, pred, user.data = NULL, limit)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{pred}}{function to be called on each character}
\item{\verb{user.data}}{user data for \code{pred}}
\item{\verb{limit}}{search limit, or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
}
\value{[logical] whether a match was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

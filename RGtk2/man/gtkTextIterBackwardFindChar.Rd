\alias{gtkTextIterBackwardFindChar}
\name{gtkTextIterBackwardFindChar}
\title{gtkTextIterBackwardFindChar}
\description{Same as \code{\link{gtkTextIterForwardFindChar}}, but goes backward from \code{iter}.}
\usage{gtkTextIterBackwardFindChar(object, pred, user.data = NULL, limit)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
\item{\code{pred}}{[\code{\link{GtkTextCharPredicate}}]  function to be called on each character}
\item{\code{user.data}}{[R object]  user data for \code{pred}}
\item{\code{limit}}{[\code{\link{GtkTextIter}}]  search limit, or \code{NULL} for none}
}
\value{[logical]  whether a match was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

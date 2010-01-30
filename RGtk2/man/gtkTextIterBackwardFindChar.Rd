\alias{gtkTextIterBackwardFindChar}
\name{gtkTextIterBackwardFindChar}
\title{gtkTextIterBackwardFindChar}
\description{Same as \code{\link{gtkTextIterForwardFindChar}}, but goes backward from \code{iter}.}
\usage{gtkTextIterBackwardFindChar(object, pred, user.data = NULL, limit)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextIter}}]  a \verb{\link{GtkTextIter}}}
\item{\verb{pred}}{[\verb{\link{GtkTextCharPredicate}}]  function to be called on each character}
\item{\verb{user.data}}{[R object]  user data for \code{pred}}
\item{\verb{limit}}{[\verb{\link{GtkTextIter}}]  search limit, or \code{NULL} for none}
}
\value{[logical]  whether a match was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

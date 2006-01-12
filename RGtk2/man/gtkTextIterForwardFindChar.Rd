\alias{gtkTextIterForwardFindChar}
\name{gtkTextIterForwardFindChar}
\title{gtkTextIterForwardFindChar}
\description{Advances \code{iter}, calling \code{pred} on each character. If
\code{pred} returns \code{TRUE}, returns \code{TRUE} and stops scanning.
If \code{pred} never returns \code{TRUE}, \code{iter} is set to \code{limit} if
\code{limit} is non-\code{NULL}, otherwise to the end iterator.}
\usage{gtkTextIterForwardFindChar(object, pred, user.data = NULL, limit)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
\item{\code{pred}}{[\code{\link{GtkTextCharPredicate}}]  a function to be called on each character}
\item{\code{user.data}}{[R object]  user data for \code{pred}}
\item{\code{limit}}{[\code{\link{GtkTextIter}}]  search limit, or \code{NULL} for none }
}
\value{[logical]  whether a match was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

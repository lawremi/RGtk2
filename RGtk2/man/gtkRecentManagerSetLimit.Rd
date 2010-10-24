\alias{gtkRecentManagerSetLimit}
\name{gtkRecentManagerSetLimit}
\title{gtkRecentManagerSetLimit}
\description{Sets the maximum number of item that the \code{\link{gtkRecentManagerGetItems}}
function should return.  If \code{limit} is set to -1, then return all the
items.}
\usage{gtkRecentManagerSetLimit(object, limit)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentManager}}}
\item{\verb{limit}}{the maximum number of items to return, or -1.}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

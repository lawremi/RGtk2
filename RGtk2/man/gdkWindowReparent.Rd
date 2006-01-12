\alias{gdkWindowReparent}
\name{gdkWindowReparent}
\title{gdkWindowReparent}
\description{Reparents \code{window} into the given \code{new.parent}. The window being
reparented will be unmapped as a side effect.}
\usage{gdkWindowReparent(object, new.parent, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{new.parent}}{[\code{\link{GdkWindow}}]  new parent to move \code{window} into}
\item{\code{x}}{[integer]  X location inside the new parent}
\item{\code{y}}{[integer]  Y location inside the new parent}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

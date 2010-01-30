\alias{gdkWindowReparent}
\name{gdkWindowReparent}
\title{gdkWindowReparent}
\description{Reparents \code{window} into the given \code{new.parent}. The window being
reparented will be unmapped as a side effect.}
\usage{gdkWindowReparent(object, new.parent, x, y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{new.parent}}{[\verb{\link{GdkWindow}}]  new parent to move \code{window} into}
\item{\verb{x}}{[integer]  X location inside the new parent}
\item{\verb{y}}{[integer]  Y location inside the new parent}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

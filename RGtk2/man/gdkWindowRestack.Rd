\alias{gdkWindowRestack}
\name{gdkWindowRestack}
\title{gdkWindowRestack}
\description{Changes the position of  \code{window} in the Z-order (stacking order), so that
it is above \code{sibling} (if \code{above} is \code{TRUE}) or below \code{sibling} (if \code{above} is
\code{FALSE}).}
\usage{gdkWindowRestack(object, sibling, above)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{sibling}}{a \code{\link{GdkWindow}} that is a sibling of \code{window}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{above}}{a boolean}
}
\details{If \code{sibling} is \code{NULL}, then this either raises (if \code{above} is \code{TRUE}) or
lowers the window.
  
If \code{window} is a toplevel, the window manager may choose to deny the
request to move the window in the Z-order, \code{\link{gdkWindowRestack}} only
requests the restack, does not guarantee it.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

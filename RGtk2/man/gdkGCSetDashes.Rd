\alias{gdkGCSetDashes}
\name{gdkGCSetDashes}
\title{gdkGCSetDashes}
\description{Sets the way dashed-lines are drawn. Lines will be
drawn with alternating on and off segments of the
lengths specified in \code{dash.list}. The manner in
which the on and off segments are drawn is determined
by the \code{line.style} value of the GC. (This can
be changed with \code{\link{gdkGCSetLineAttributes}}.)}
\usage{gdkGCSetDashes(object, dash.list)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkGC}}.}
\item{\verb{dash.list}}{a list of dash lengths.}
}
\details{The \code{dash.offset} defines the phase of the pattern, 
specifying how many pixels into the dash-list the pattern 
should actually begin.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

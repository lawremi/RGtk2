\alias{gdkGCSetValues}
\name{gdkGCSetValues}
\title{gdkGCSetValues}
\description{Sets attributes of a graphics context in bulk. For each flag set in
\code{values.mask}, the corresponding field will be read from \code{values} and
set as the new value for \code{gc}. If you're only setting a few values
on \code{gc}, calling individual "setter" functions is likely more
convenient.}
\usage{gdkGCSetValues(object, values)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkGC}}}
\item{\verb{values}}{struct containing the new values}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkAccelMapLookupEntry}
\name{gtkAccelMapLookupEntry}
\title{gtkAccelMapLookupEntry}
\description{Looks up the accelerator entry for \code{accel.path} and fills in \code{key}.}
\usage{gtkAccelMapLookupEntry(accel.path)}
\arguments{\item{\code{accel.path}}{[character]   a valid accelerator path}}
\value{
A list containing the following elements:
\item{retval}{[logical]      \code{TRUE} if \code{accel.path} is known, \code{FALSE} otherwise}
\item{\code{key}}{[\code{\link{GtkAccelKey}}]          the accelerator key to be filled in (optional)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

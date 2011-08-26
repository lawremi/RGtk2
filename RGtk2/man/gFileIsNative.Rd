\alias{gFileIsNative}
\name{gFileIsNative}
\title{gFileIsNative}
\description{Checks to see if a file is native to the platform.}
\usage{gFileIsNative(object)}
\arguments{\item{\verb{object}}{input \code{\link{GFile}}.}}
\details{A native file s one expressed in the platform-native filename format,
e.g. "C:\\Windows" or "/usr/bin/". This does not mean the file is local,
as it might be on a locally mounted remote filesystem.
  
On some systems non-native files may be available using
the native filesystem via a userspace filesystem (FUSE), in
these cases this call will return \code{FALSE}, but \code{\link{gFileGetPath}}
will still return a native path.
  
This call does no blocking i/o.}
\value{[logical] \code{TRUE} if file is native.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

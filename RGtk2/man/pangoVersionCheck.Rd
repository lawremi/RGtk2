\alias{pangoVersionCheck}
\name{pangoVersionCheck}
\title{pangoVersionCheck}
\description{Checks that the Pango library in use is compatible with the
given version. Generally you would pass in the constants
\code{PANGO_VERSION_MAJOR}, \code{PANGO_VERSION_MINOR}, \code{PANGO_VERSION_MICRO}
as the three arguments to this function; that produces
a check that the library in use at run-time is compatible with
the version of Pango the application or module was compiled against.}
\usage{pangoVersionCheck(required.major, required.minor, required.micro)}
\arguments{
\item{\verb{required.major}}{[integer]  the required major version.}
\item{\verb{required.minor}}{[integer]  the required minor version.}
\item{\verb{required.micro}}{[integer]  the required major version.}
}
\details{Compatibility is defined by two things: first the version
of the running library is newer than the version
\code{required.major.required.minor}.\code{required.micro}. Second
the running library must be binary compatible with the
version \code{required.major.required.minor}.\code{required.micro}
(same major version.)
  
For compile-time version checking use \code{pangoVersionCheck()}.  
  Since 1.16}
\value{[char] \code{NULL} if the Pango library is compatible with the
  given version, or a string describing the version mismatch.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

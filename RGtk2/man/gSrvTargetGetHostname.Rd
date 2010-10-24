\alias{gSrvTargetGetHostname}
\name{gSrvTargetGetHostname}
\title{gSrvTargetGetHostname}
\description{Gets \code{target}'s hostname (in ASCII form; if you are going to present
this to the user, you should use \code{gHostnameIsAsciiEncoded()} to
check if it contains encoded Unicode segments, and use
\code{gHostnameToUnicode()} to convert it if it does.)}
\usage{gSrvTargetGetHostname(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSrvTarget}}}}
\details{Since 2.22}
\value{[character] \code{target}'s hostname}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

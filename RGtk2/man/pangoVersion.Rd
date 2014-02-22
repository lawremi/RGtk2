\alias{pangoVersion}
\name{pangoVersion}
\title{pangoVersion}
\description{This is similar to the function \code{PANGO_VERSION} except that
it returns the encoded version of Pango available at run-time,
as opposed to the version available at compile-time.}
\usage{pangoVersion()}
\details{A version number can be encoded into an integer using
\code{pangoVersionEncode()}.  
  Since 1.16}
\value{[integer]  The encoded version of Pango library
  available at run time.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

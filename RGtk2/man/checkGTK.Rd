\name{checkGTK}
\Rdversion{1.1}
\alias{checkGTK}
\alias{checkPango}
\alias{checkCairo}
\alias{boundGTKVersion}
\alias{boundCairoVersion}
\alias{boundPangoVersion}

\title{
Bound versions
}
\description{
These functions are for querying (\code{bound}*) and checking
(\code{check}*) the bound versions of the libraries (GTK, Pango and Cairo).
}
\usage{
checkGTK(version)
checkPango(version)
checkCairo(version)
boundGTKVersion()
boundPangoVersion()
boundCairoVersion()
}

\arguments{
  \item{version}{
    Version description to compare to the bound version, as in:
    \code{compareVersion(boundGTKVersion(), version)}.
  }
}
\value{
The \code{check}* functions return the result of the comparison as an
integer, as from \code{\link{compareVersion}}.

The \code{bound}* functions return a character vector representation of
the bound library version.
}
\author{
Michael Lawrence
}

\seealso{
\code{\link{compareVersion}}
}
\examples{
checkGTK("2.12.0")
# same as
compareVersion(boundGTKVersion(), "2.12.0")
}
\keyword{interface}

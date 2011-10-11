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
(\code{check}*) the bound versions of the libraries (GTK, Pango and
Cairo). As of RGtk2 2.20.19, the \code{check*} functions are deprecated
in favor of the more explicit \code{boundVersion() >= version} syntax.
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
    \code{boundGTKVersion() >= version}.
  }
}
\value{
The \code{check}* functions return \code{TRUE} if \code{version} is
satisfied, otherwise \code{FALSE}.

The \code{bound}* functions return a \code{\link{numeric_version}}
representation of the bound library version.
}
\author{
Michael Lawrence
}

\examples{
## instead of
# checkGTK("2.12.0")
## do this:
boundGTKVersion() >= "2.12.0"
}
\keyword{interface}

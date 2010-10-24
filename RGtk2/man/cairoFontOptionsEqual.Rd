\alias{cairoFontOptionsEqual}
\name{cairoFontOptionsEqual}
\title{cairoFontOptionsEqual}
\description{Compares two font options objects for equality.}
\usage{cairoFontOptionsEqual(options, other)}
\arguments{
\item{\verb{options}}{[\code{\link{CairoFontOptions}}]  a \code{\link{CairoFontOptions}}}
\item{\verb{other}}{[\code{\link{CairoFontOptions}}]  another \code{\link{CairoFontOptions}}}
}
\value{[logical] \code{TRUE} if all fields of the two font options objects match.
Note that this function will return \code{FALSE} if either object is in
error.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

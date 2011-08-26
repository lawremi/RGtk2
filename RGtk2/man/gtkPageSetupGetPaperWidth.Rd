\alias{gtkPageSetupGetPaperWidth}
\name{gtkPageSetupGetPaperWidth}
\title{gtkPageSetupGetPaperWidth}
\description{Returns the paper width in units of \code{unit}.}
\usage{gtkPageSetupGetPaperWidth(object, unit)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPageSetup}}}
\item{\verb{unit}}{the unit for the return value}
}
\details{Note that this function takes orientation, but 
not margins into consideration. 
See \code{\link{gtkPageSetupGetPageWidth}}.
  Since 2.10}
\value{[numeric] the paper width.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

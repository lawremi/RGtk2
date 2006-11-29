\alias{gtkPageSetupGetPageHeight}
\name{gtkPageSetupGetPageHeight}
\title{gtkPageSetupGetPageHeight}
\description{Returns the page height in units of \code{unit}.}
\usage{gtkPageSetupGetPageHeight(object, unit)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPageSetup}}]  a \code{\link{GtkPageSetup}}}
\item{\code{unit}}{[\code{\link{GtkUnit}}]  the unit for the return value}
}
\details{Note that this function takes orientation and
margins into consideration. 
See \code{\link{gtkPageSetupGetPaperHeight}}.  

  Since  2.10}
\value{[numeric]  the page height.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

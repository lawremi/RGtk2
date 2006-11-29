\alias{gtkPageSetupGetPageWidth}
\name{gtkPageSetupGetPageWidth}
\title{gtkPageSetupGetPageWidth}
\description{Returns the page width in units of \code{unit}.}
\usage{gtkPageSetupGetPageWidth(object, unit)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPageSetup}}]  a \code{\link{GtkPageSetup}}}
\item{\code{unit}}{[\code{\link{GtkUnit}}]  the unit for the return value}
}
\details{Note that this function takes orientation and
margins into consideration. 
See \code{\link{gtkPageSetupGetPaperWidth}}.  

  Since  2.10}
\value{[numeric]  the page width.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

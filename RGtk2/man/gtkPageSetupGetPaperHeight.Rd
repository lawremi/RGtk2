\alias{gtkPageSetupGetPaperHeight}
\name{gtkPageSetupGetPaperHeight}
\title{gtkPageSetupGetPaperHeight}
\description{Returns the paper height in units of \code{unit}.}
\usage{gtkPageSetupGetPaperHeight(object, unit)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkPageSetup}}]  a \verb{\link{GtkPageSetup}}}
\item{\verb{unit}}{[\code{\link{GtkUnit}}]  the unit for the return value}
}
\details{Note that this function takes orientation, but 
not margins into consideration.
See \code{\link{gtkPageSetupGetPageHeight}}.  

  Since  2.10}
\value{[numeric]  the paper height.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

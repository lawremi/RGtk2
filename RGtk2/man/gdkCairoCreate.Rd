\alias{gdkCairoCreate}
\name{gdkCairoCreate}
\title{gdkCairoCreate}
\description{Creates a Cairo context for drawing to \code{drawable}.}
\usage{gdkCairoCreate(drawable)}
\arguments{\item{\verb{drawable}}{a \code{\link{GdkDrawable}}}}
\details{\strong{PLEASE NOTE:} Note that due to double-buffering, Cairo contexts created 
in a GTK+ expose event handler cannot be cached and reused 
between different expose events.   Since 2.8}
\value{[\code{\link{Cairo}}] A newly created Cairo context.}
\note{Note that due to double-buffering, Cairo contexts created 
in a GTK+ expose event handler cannot be cached and reused 
between different expose events. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

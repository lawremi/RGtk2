\alias{gtkStatusIconNewFromPixbuf}
\name{gtkStatusIconNewFromPixbuf}
\title{gtkStatusIconNewFromPixbuf}
\description{Creates a status icon displaying \code{pixbuf}. }
\usage{gtkStatusIconNewFromPixbuf(pixbuf)}
\arguments{\item{\verb{pixbuf}}{a \code{\link{GdkPixbuf}}}}
\details{The image will be scaled down to fit in the available 
space in the notification area, if necessary.
  Since 2.10}
\value{[\code{\link{GtkStatusIcon}}] a new \code{\link{GtkStatusIcon}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

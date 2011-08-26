\alias{gtkIconSetNewFromPixbuf}
\name{gtkIconSetNewFromPixbuf}
\title{gtkIconSetNewFromPixbuf}
\description{Creates a new \code{\link{GtkIconSet}} with \code{pixbuf} as the default/fallback
source image. If you don't add any additional \code{\link{GtkIconSource}} to the
icon set, all variants of the icon will be created from \code{pixbuf},
using scaling, pixelation, etc. as required to adjust the icon size
or make the icon look insensitive/prelighted.}
\usage{gtkIconSetNewFromPixbuf(pixbuf)}
\arguments{\item{\verb{pixbuf}}{a \code{\link{GdkPixbuf}}}}
\value{[\code{\link{GtkIconSet}}] a new \code{\link{GtkIconSet}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

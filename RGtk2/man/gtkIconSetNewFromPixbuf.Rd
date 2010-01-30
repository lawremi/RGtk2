\alias{gtkIconSetNewFromPixbuf}
\name{gtkIconSetNewFromPixbuf}
\title{gtkIconSetNewFromPixbuf}
\description{Creates a new \verb{\link{GtkIconSet}} with \code{pixbuf} as the default/fallback
source image. If you don't add any additional \verb{\link{GtkIconSource}} to the
icon set, all variants of the icon will be created from \code{pixbuf},
using scaling, pixelation, etc. as required to adjust the icon size
or make the icon look insensitive/prelighted.}
\usage{gtkIconSetNewFromPixbuf(pixbuf)}
\arguments{\item{\verb{pixbuf}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}}}
\value{[\verb{\link{GtkIconSet}}]  a new \verb{\link{GtkIconSet}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

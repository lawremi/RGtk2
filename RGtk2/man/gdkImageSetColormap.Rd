\alias{gdkImageSetColormap}
\name{gdkImageSetColormap}
\title{gdkImageSetColormap}
\description{Sets the colormap for the image to the given colormap.  Normally
there's no need to use this function, images are created with the
correct colormap if you get the image from a drawable. If you
create the image from scratch, use the colormap of the drawable you
intend to render the image to.}
\usage{gdkImageSetColormap(object, colormap)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkImage}}]  a \verb{\link{GdkImage}}}
\item{\verb{colormap}}{[\verb{\link{GdkColormap}}]  a \verb{\link{GdkColormap}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

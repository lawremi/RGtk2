\alias{gdkScreenGetRgbaColormap}
\name{gdkScreenGetRgbaColormap}
\title{gdkScreenGetRgbaColormap}
\description{Gets a colormap to use for creating windows or pixmaps with an
alpha channel. The windowing system on which GTK+ is running
may not support this capability, in which case \code{NULL} will
be returned. Even if a non-\code{NULL} value is returned, its
possible that the window's alpha channel won't be honored
when displaying the window on the screen: in particular, for
X an appropriate windowing manager and compositing manager
must be running to provide appropriate display.}
\usage{gdkScreenGetRgbaColormap(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}.}}
\details{This functionality is not implemented in the Windows backend.
  
For setting an overall opacity for a top-level window, see
\code{\link{gdkWindowSetOpacity}}.
  Since 2.8}
\value{[\code{\link{GdkColormap}}] a colormap to use for windows with
an alpha channel or \code{NULL} if the capability is not available. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

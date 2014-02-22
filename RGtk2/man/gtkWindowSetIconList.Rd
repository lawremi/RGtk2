\alias{gtkWindowSetIconList}
\name{gtkWindowSetIconList}
\title{gtkWindowSetIconList}
\description{Sets up the icon representing a \code{\link{GtkWindow}}. The icon is used when
the window is minimized (also known as iconified).  Some window
managers or desktop environments may also place it in the window
frame, or display it in other contexts.}
\usage{gtkWindowSetIconList(object, list)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{list}}{list of \code{\link{GdkPixbuf}}. \emph{[  \acronym{element-type}   GdkPixbuf][  \acronym{transfer container}  ]}}
}
\details{\code{\link{gtkWindowSetIconList}} allows you to pass in the same icon in
several hand-drawn sizes. The list should contain the natural sizes
your icon is available in; that is, don't scale the image before
passing it to GTK+. Scaling is postponed until the last minute,
when the desired final size is known, to allow best quality.
  
By passing several sizes, you may improve the final image quality
of the icon, by reducing or eliminating automatic image scaling.
  
Recommended sizes to provide: 16x16, 32x32, 48x48 at minimum, and
larger images (64x64, 128x128) if you have them.
  
See also \code{\link{gtkWindowSetDefaultIconList}} to set the icon
for all windows in your application in one go.
  
Note that transient windows (those who have been set transient for another
window using \code{\link{gtkWindowSetTransientFor}}) will inherit their
icon from their transient parent. So there's no need to explicitly
set the icon on transient windows.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

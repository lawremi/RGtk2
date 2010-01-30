\alias{gtkDragSetDefaultIcon}
\name{gtkDragSetDefaultIcon}
\title{gtkDragSetDefaultIcon}
\description{
Changes the default drag icon. GTK+ retains references for the
arguments, and will release them when they are no longer needed.
This function is obsolete. The default icon should now be changed
via the stock system by changing the stock pixbuf for \verb{GTK_STOCK_DND}.
\strong{WARNING: \code{gtk_drag_set_default_icon} is deprecated and should not be used in newly-written code.}
}
\usage{gtkDragSetDefaultIcon(colormap, pixmap, mask, hot.x, hot.y)}
\arguments{
\item{\verb{colormap}}{[\verb{\link{GdkColormap}}]  the colormap of the icon}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}]  the image data for the icon}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}]  the transparency mask for an image.}
\item{\verb{hot.x}}{[integer]  The X offset within \code{widget} of the hotspot.}
\item{\verb{hot.y}}{[integer]  The Y offset within \code{widget} of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

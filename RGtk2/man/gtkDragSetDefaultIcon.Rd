\alias{gtkDragSetDefaultIcon}
\name{gtkDragSetDefaultIcon}
\title{gtkDragSetDefaultIcon}
\description{
Changes the default drag icon. GTK+ retains references for the
arguments, and will release them when they are no longer needed.
\strong{WARNING: \code{gtk_drag_set_default_icon} is deprecated and should not be used in newly-written code. Change the default drag icon via the stock system by 
    changing the stock pixbuf for \verb{GTK_STOCK_DND} instead.}
}
\usage{gtkDragSetDefaultIcon(colormap, pixmap, mask, hot.x, hot.y)}
\arguments{
\item{\verb{colormap}}{the colormap of the icon}
\item{\verb{pixmap}}{the image data for the icon}
\item{\verb{mask}}{the transparency mask for an image, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{hot.x}}{The X offset within \code{widget} of the hotspot.}
\item{\verb{hot.y}}{The Y offset within \code{widget} of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

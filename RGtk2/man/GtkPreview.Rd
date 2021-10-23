\alias{GtkPreview}
\alias{GtkPreviewInfo}
\alias{gtkPreview}
\name{GtkPreview}
\title{GtkPreview}
\description{A widget to display RGB or grayscale data}
\section{Methods and Functions}{
\code{\link{gtkPreviewUninit}()}\cr
\code{\link{gtkPreviewNew}(type, show = TRUE)}\cr
\code{\link{gtkPreviewSize}(object, width, height)}\cr
\code{\link{gtkPreviewPut}(object, window, gc, srcx, srcy, destx, desty, width, height)}\cr
\code{\link{gtkPreviewDrawRow}(object, data, y, w)}\cr
\code{\link{gtkPreviewSetExpand}(object, expand)}\cr
\code{\link{gtkPreviewSetGamma}(gamma)}\cr
\code{\link{gtkPreviewSetColorCube}(nred.shades, ngreen.shades, nblue.shades, ngray.shades)}\cr
\code{\link{gtkPreviewSetInstallCmap}(install.cmap)}\cr
\code{\link{gtkPreviewSetReserved}(nreserved)}\cr
\code{\link{gtkPreviewSetDither}(object, dither)}\cr
\code{\link{gtkPreviewGetVisual}()}\cr
\code{\link{gtkPreviewGetCmap}()}\cr
\code{\link{gtkPreviewGetInfo}()}\cr
\code{\link{gtkPreviewReset}()}\cr
\code{gtkPreview(type, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkPreview}}
\section{Interfaces}{GtkPreview implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkPreview}} widget provides a simple interface
used to display images as RGB or grayscale data.
It's deprecated; just use a \code{\link{GdkPixbuf}} displayed by a \code{\link{GtkImage}}, or
perhaps a \code{\link{GtkDrawingArea}}. \code{\link{GtkPreview}} has no advantage over those
approaches.}
\section{Structures}{\describe{
\item{\verb{GtkPreview}}{
\strong{WARNING: \code{GtkPreview} is deprecated and should not be used in newly-written code.}
The \code{\link{GtkPreview}} struct contains private data only, and
should be accessed using the functions below.

}
\item{\verb{GtkPreviewInfo}}{
\strong{WARNING: \code{GtkPreviewInfo} is deprecated and should not be used in newly-written code.}
Contains information about global properties
of preview widgets.
The \code{\link{GtkPreviewInfo}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)
\tabular{ll}{
\code{\link{GdkVisual}}   *visual; \tab the visual used by all previews. \cr
\code{\link{GdkColormap}}   *cmap; \tab the colormap used by all previews. \cr
gdouble gamma; \tab the gamma correction value used by all previews (See   \code{\link{gtkPreviewSetGamma}}  ). \cr
}

}
}}
\section{Convenient Construction}{\code{gtkPreview} is the equivalent of \code{\link{gtkPreviewNew}}.}
\section{Properties}{\describe{\item{\verb{expand} [logical : Read / Write]}{

Whether the preview widget should take up the entire space it is allocated.  Default value: FALSE

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPreview.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

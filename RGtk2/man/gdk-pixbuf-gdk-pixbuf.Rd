\alias{gdk-pixbuf-gdk-pixbuf}
\alias{GdkPixbuf}
\alias{gdkPixbuf}
\alias{GdkPixbufError}
\alias{GdkColorspace}
\alias{GdkPixbufAlphaMode}
\name{gdk-pixbuf-gdk-pixbuf}
\title{The GdkPixbuf Structure}
\description{Information that describes an image.}
\section{Methods and Functions}{
\code{\link{gdkPixbufGetColorspace}(object)}\cr
\code{\link{gdkPixbufGetNChannels}(object)}\cr
\code{\link{gdkPixbufGetHasAlpha}(object)}\cr
\code{\link{gdkPixbufGetBitsPerSample}(object)}\cr
\code{\link{gdkPixbufGetPixels}(object)}\cr
\code{\link{gdkPixbufGetWidth}(object)}\cr
\code{\link{gdkPixbufGetHeight}(object)}\cr
\code{\link{gdkPixbufGetRowstride}(object)}\cr
\code{\link{gdkPixbufGetOption}(object, key)}\cr
\code{gdkPixbuf(width = -1, height = -1, filename, colorspace, has.alpha, bits.per.sample, preserve.aspect.ratio = 1, data, stream, cancellable = NULL, rowstride, .errwarn = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GdkPixbuf}}
\section{Detailed Description}{    The \code{GdkPixbuf} structure contains
    information that describes an image in memory.
  }
\section{Structures}{\describe{\item{\verb{GdkPixbuf}}{
    This is the main structure in the \command{gdk-pixbuf} library.  It is
    used to represent images.  It contains information about the
    image's pixel data, its color space, bits per sample, width and
    height, and the rowstride (the number of bytes between the start of
    one row and the start of the next).
  

}}}
\section{Convenient Construction}{\code{gdkPixbuf} is the result of collapsing the constructors of \code{GdkPixbuf} (\code{\link{gdkPixbufNew}}, \code{\link{gdkPixbufNewFromFile}}, \code{\link{gdkPixbufNewFromFileAtSize}}, \code{\link{gdkPixbufNewFromFileAtScale}}, \code{\link{gdkPixbufNewFromData}}, \code{\link{gdkPixbufNewFromXpmData}}, NULL, \code{\link{gdkPixbufNewFromStream}}, \code{\link{gdkPixbufNewFromStreamAtScale}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\verb{GdkPixbufError}}{
An error code in the \verb{GDK_PIXBUF_ERROR} domain. Many \command{gdk-pixbuf}
operations can cause errors in this domain, or in the \verb{G_FILE_ERROR}
domain.

\describe{
\item{\verb{corrupt-image}}{An image file was broken somehow.}
\item{\verb{insufficient-memory}}{Not enough memory.}
\item{\verb{bad-option-value}}{A bad option was passed to a pixbuf save module.}
\item{\verb{unknown-type}}{Unknown image type.}
\item{\verb{unsupported-operation}}{Don't know how to perform the
given operation on the type of image at hand.}
\item{\verb{failed}}{Generic failure code, something went wrong.}
}

}
\item{\verb{GdkColorspace}}{
    This enumeration defines the color spaces that are supported by
    the \command{gdk-pixbuf} library.  Currently only RGB is supported.
  

\describe{\item{\verb{b}}{Indicates a red/green/blue additive color space.}}

}
\item{\verb{GdkPixbufAlphaMode}}{
    These values can be passed to
    \code{\link{gdkPixbufRenderToDrawableAlpha}} to control how the alpha
    channel of an image should be handled.  This function can create a
    bilevel clipping mask (black and white) and use it while painting
    the image.  In the future, when the X Window System gets an alpha
    channel extension, it will be possible to do full alpha
    compositing onto arbitrary drawables.  For now both cases fall
    back to a bilevel clipping mask.
  

\describe{
\item{\verb{bilevel}}{A bilevel clipping mask (black and white)
will be created and used to draw the image.  Pixels below 0.5 opacity
will be considered fully transparent, and all others will be
considered fully opaque.}
\item{\verb{full}}{For now falls back to \verb{GDK_PIXBUF_ALPHA_BILEVEL}.
In the future it will do full alpha compositing.}
}

}
}}
\section{Properties}{\describe{
\item{\verb{bits-per-sample} [integer : Read / Write / Construct Only]}{

The number of bits per sample.
Currently only 8 bit per sample are supported.
  Allowed values: [1,16]  Default value: 8

}
\item{\verb{colorspace} [\code{\link{GdkColorspace}} : Read / Write / Construct Only]}{

The colorspace in which the samples are interpreted.  Default value: GDK_COLORSPACE_RGB

}
\item{\verb{has-alpha} [logical : Read / Write / Construct Only]}{

Whether the pixbuf has an alpha channel.  Default value: FALSE

}
\item{\verb{height} [integer : Read / Write / Construct Only]}{

The number of rows of the pixbuf.  Allowed values: >= 1  Default value: 1

}
\item{\verb{n-channels} [integer : Read / Write / Construct Only]}{

The number of samples per pixel.
Currently, only 3 or 4 samples per pixel are supported.
  Allowed values: >= 0  Default value: 3

}
\item{\verb{pixels} [R object : Read / Write / Construct Only]}{

A pointer to the pixel data of the pixbuf.

}
\item{\verb{rowstride} [integer : Read / Write / Construct Only]}{

The number of bytes between the start of a row and
the start of the next row. This number must (obviously)
be at least as large as the width of the pixbuf.
  Allowed values: >= 1  Default value: 1

}
\item{\verb{width} [integer : Read / Write / Construct Only]}{

The number of columns of the pixbuf.  Allowed values: >= 1  Default value: 1

}
}}
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-The-GdkPixbuf-Structure.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

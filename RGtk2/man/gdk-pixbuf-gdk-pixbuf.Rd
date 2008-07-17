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
\code{gdkPixbuf(width, height, filename, colorspace, has.alpha, bits.per.sample, data, preserve.aspect.ratio, rowstride, .errwarn = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GdkPixbuf}}
\section{Detailed Description}{    The \code{GdkPixbuf} structure contains
    information that describes an image in memory.
  }
\section{Structures}{\describe{\item{\code{GdkPixbuf}}{
    This is the main structure in the \command{gdk-pixbuf} library.  It is
    used to represent images.  It contains information about the
    image's pixel data, its color space, bits per sample, width and
    height, and the rowstride (the number of bytes between the start of
    one row and the start of the next). 
  

}}}
\section{Convenient Construction}{\code{gdkPixbuf} is the result of collapsing the constructors of \code{GdkPixbuf} (\code{\link{gdkPixbufNew}}, \code{\link{gdkPixbufNewFromFile}}, \code{\link{gdkPixbufNewFromFileAtSize}}, \code{\link{gdkPixbufNewFromFileAtScale}}, \code{\link{gdkPixbufNewFromData}}, \code{\link{gdkPixbufNewFromXpmData}}, NULL) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{GdkPixbufError}}{
An error code in the \code{GDK_PIXBUF_ERROR} domain. Many \command{gdk-pixbuf}
operations can cause errors in this domain, or in the \code{G_FILE_ERROR}
domain.

\describe{
\item{\code{corrupt-image}}{An image file was broken somehow.}
\item{\code{insufficient-memory}}{Not enough memory.}
\item{\code{bad-option-value}}{A bad option was passed to a pixbuf save module.}
\item{\code{unknown-type}}{Unknown image type.}
\item{\code{unsupported-operation}}{Don't know how to perform the
given operation on the type of image at hand.}
\item{\code{failed}}{Generic failure code, something went wrong.}
}

}
\item{\code{GdkColorspace}}{
    This enumeration defines the color spaces that are supported by
    the \command{gdk-pixbuf} library.  Currently only RGB is supported.
  

\describe{\item{\code{b}}{Indicates a red/green/blue additive color space.}}

}
\item{\code{GdkPixbufAlphaMode}}{
    These values can be passed to
    \code{\link{gdkPixbufRenderToDrawableAlpha}} to control how the alpha
    channel of an image should be handled.  This function can create a
    bilevel clipping mask (black and white) and use it while painting
    the image.  In the future, when the X Window System gets an alpha
    channel extension, it will be possible to do full alpha
    compositing onto arbitrary drawables.  For now both cases fall
    back to a bilevel clipping mask.
  

\describe{
\item{\code{bilevel}}{A bilevel clipping mask (black and white)
will be created and used to draw the image.  Pixels below 0.5 opacity
will be considered fully transparent, and all others will be
considered fully opaque.}
\item{\code{full}}{For now falls back to \code{GDK_PIXBUF_ALPHA_BILEVEL}.
In the future it will do full alpha compositing.}
}

}
}}
\section{Properties}{\describe{
\item{\code{bits-per-sample} [integer : Read / Write / Construct Only]}{

The number of bits per sample. 
Currently only 8 bit per sample are supported.  

  Allowed values: [1,16]  Default value: 8

}
\item{\code{colorspace} [\code{\link{GdkColorspace}} : Read / Write / Construct Only]}{

The colorspace in which the samples are interpreted.  Default value: GDK\_COLORSPACE\_RGB

}
\item{\code{has-alpha} [logical : Read / Write / Construct Only]}{

Whether the pixbuf has an alpha channel.  Default value: FALSE

}
\item{\code{height} [integer : Read / Write / Construct Only]}{

The number of rows of the pixbuf.  Allowed values: >= 1  Default value: 1

}
\item{\code{n-channels} [integer : Read / Write / Construct Only]}{

The number of samples per pixel. 
Currently, only 3 or 4 samples per pixel are supported.  

  Allowed values: >= 0  Default value: 3

}
\item{\code{pixels} [R object : Read / Write / Construct Only]}{

A pointer to the pixel data of the pixbuf.

}
\item{\code{rowstride} [integer : Read / Write / Construct Only]}{

The number of bytes between the start of a row and 
the start of the next row. This number must (obviously)
be at least as large as the width of the pixbuf.  

  Allowed values: >= 1  Default value: 1

}
\item{\code{width} [integer : Read / Write / Construct Only]}{

The number of columns of the pixbuf.  Allowed values: >= 1  Default value: 1

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk-pixbuf/gdk-pixbuf-gdk-pixbuf.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

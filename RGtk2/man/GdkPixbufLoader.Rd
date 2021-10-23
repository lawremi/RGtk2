\alias{GdkPixbufLoader}
\alias{gdkPixbufLoader}
\name{GdkPixbufLoader}
\title{GdkPixbufLoader}
\description{Application-driven progressive image loading.}
\section{Methods and Functions}{
\code{\link{gdkPixbufLoaderNew}()}\cr
\code{\link{gdkPixbufLoaderNewWithType}(image.type, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufLoaderNewWithMimeType}(mime.type, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufLoaderGetFormat}(object)}\cr
\code{\link{gdkPixbufLoaderWrite}(object, buf, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufLoaderSetSize}(object, width, height)}\cr
\code{\link{gdkPixbufLoaderGetPixbuf}(object)}\cr
\code{\link{gdkPixbufLoaderGetAnimation}(object)}\cr
\code{\link{gdkPixbufLoaderClose}(object, .errwarn = TRUE)}\cr
\code{gdkPixbufLoader(image.type, mime.type, .errwarn = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GdkPixbufLoader}}
\section{Detailed Description}{\code{\link{GdkPixbufLoader}} provides a way for applications to drive the
    process of loading an image, by letting them send the image data
    directly to the loader instead of having the loader read the data
    from a file.  Applications can use this functionality instead of
    \code{\link{gdkPixbufNewFromFile}} or \code{\link{gdkPixbufAnimationNewFromFile}}
    when they need to parse image data in
    small chunks.  For example, it should be used when reading an
    image from a (potentially) slow network connection, or when
    loading an extremely large file.
    
    To use \code{\link{GdkPixbufLoader}} to load an image, just create a new one,
    and call \code{\link{gdkPixbufLoaderWrite}} to send the data to it.  When
    done, \code{\link{gdkPixbufLoaderClose}} should be called to end the stream
    and finalize everything.  The loader will emit three important
    signals throughout the process.  The first, "size_prepared",
    will be called as soon as the image has enough information to
    determine the size of the image to be used. If you want to scale
    the image while loading it, you can call \code{\link{gdkPixbufLoaderSetSize}}
    in response to this signal.
      The second signal, "area_prepared",
    will be called as soon as the pixbuf of the desired has been
    allocated.  You can obtain it by calling \code{\link{gdkPixbufLoaderGetPixbuf}}.
    If you want to use it, simply ref it.
    In addition, no actual information will be passed in yet, so the
    pixbuf can be safely filled with any temporary graphics (or an
    initial color) as needed.  You can also call
    \code{\link{gdkPixbufLoaderGetPixbuf}} later and get the same pixbuf.
    
    The last signal, "area_updated" gets
    called every time a region is updated.  This way you can update a
    partially completed image.  Note that you do not know anything
    about the completeness of an image from the area updated.  For
    example, in an interlaced image, you need to make several passes
    before the image is done loading.
  }
\section{Loading an animation}{      Loading an animation is almost as easy as loading an
      image.  Once the first "area_prepared" signal
      has been emitted, you can call \code{\link{gdkPixbufLoaderGetAnimation}}
      to get the \code{\link{GdkPixbufAnimation}} struct and \code{\link{gdkPixbufAnimationGetIter}}
      to get an \code{\link{GdkPixbufAnimationIter}} for displaying it.
    }
\section{Structures}{\describe{\item{\verb{GdkPixbufLoader}}{
The \code{GdkPixbufLoader} struct contains only private
fields.

}}}
\section{Convenient Construction}{\code{gdkPixbufLoader} is the result of collapsing the constructors of \code{GdkPixbufLoader} (\code{\link{gdkPixbufLoaderNew}}, \code{\link{gdkPixbufLoaderNewWithType}}, \code{\link{gdkPixbufLoaderNewWithMimeType}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{area-prepared(loader, user.data)}}{
This signal is emitted when the pixbuf loader has allocated the
pixbuf in the desired size.  After this signal is emitted,
applications can call \code{\link{gdkPixbufLoaderGetPixbuf}} to fetch
the partially-loaded pixbuf.

\describe{
\item{\code{loader}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{area-updated(loader, x, y, width, height, user.data)}}{
This signal is emitted when a significant area of the image being
loaded has been updated.  Normally it means that a complete
scanline has been read in, but it could be a different area as
well.  Applications can use this signal to know when to repaint
areas of an image that is being loaded.

\describe{
\item{\code{loader}}{the object which received the signal.}
\item{\code{x}}{X offset of upper-left corner of the updated area.}
\item{\code{y}}{Y offset of upper-left corner of the updated area.}
\item{\code{width}}{Width of updated area.}
\item{\code{height}}{Height of updated area.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{closed(loader, user.data)}}{
This signal is emitted when \code{\link{gdkPixbufLoaderClose}} is called.
It can be used by different parts of an application to receive
notification when an image loader is closed by the code that
drives it.

\describe{
\item{\code{loader}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{size-prepared(loader, width, height, user.data)}}{
This signal is emitted when the pixbuf loader has been fed the
initial amount of data that is required to figure out the size
of the image that it will create.  Applications can call
\code{\link{gdkPixbufLoaderSetSize}} in response to this signal to set
the desired size to which the image should be scaled.

\describe{
\item{\code{loader}}{the object which received the signal.}
\item{\code{width}}{the original width of the image}
\item{\code{height}}{the original height of the image}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/GdkPixbufLoader.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{GtkImage}
\alias{gtkImage}
\alias{GtkImageType}
\name{GtkImage}
\title{GtkImage}
\description{A widget displaying an image}
\section{Methods and Functions}{
\code{\link{gtkImageGetIconSet}(object)}\cr
\code{\link{gtkImageGetImage}(object)}\cr
\code{\link{gtkImageGetPixbuf}(object)}\cr
\code{\link{gtkImageGetPixmap}(object)}\cr
\code{\link{gtkImageGetStock}(object)}\cr
\code{\link{gtkImageGetAnimation}(object)}\cr
\code{\link{gtkImageGetIconName}(object)}\cr
\code{\link{gtkImageGetStorageType}(object)}\cr
\code{\link{gtkImageNewFromFile}(filename, show = TRUE)}\cr
\code{\link{gtkImageNewFromIconSet}(icon.set, size, show = TRUE)}\cr
\code{\link{gtkImageNewFromImage}(image = NULL, mask = NULL, show = TRUE)}\cr
\code{\link{gtkImageNewFromPixbuf}(pixbuf = NULL, show = TRUE)}\cr
\code{\link{gtkImageNewFromPixmap}(pixmap = NULL, mask = NULL, show = TRUE)}\cr
\code{\link{gtkImageNewFromStock}(stock.id, size, show = TRUE)}\cr
\code{\link{gtkImageNewFromAnimation}(animation, show = TRUE)}\cr
\code{\link{gtkImageNewFromIconName}(icon.name, size)}\cr
\code{\link{gtkImageSetFromFile}(object, filename = NULL)}\cr
\code{\link{gtkImageSetFromIconSet}(object, icon.set, size)}\cr
\code{\link{gtkImageSetFromImage}(object, gdk.image = NULL, mask = NULL)}\cr
\code{\link{gtkImageSetFromPixbuf}(object, pixbuf = NULL)}\cr
\code{\link{gtkImageSetFromPixmap}(object, pixmap, mask = NULL)}\cr
\code{\link{gtkImageSetFromStock}(object, stock.id, size)}\cr
\code{\link{gtkImageSetFromAnimation}(object, animation)}\cr
\code{\link{gtkImageSetFromIconName}(object, icon.name, size)}\cr
\code{\link{gtkImageClear}(object)}\cr
\code{\link{gtkImageNew}(show = TRUE)}\cr
\code{\link{gtkImageSet}(object, val, mask)}\cr
\code{\link{gtkImageGet}(object)}\cr
\code{\link{gtkImageSetPixelSize}(object, pixel.size)}\cr
\code{\link{gtkImageGetPixelSize}(object)}\cr
\code{gtkImage(mask = NULL, size, pixmap = NULL, image = NULL, filename, pixbuf = NULL, stock.id, icon.set, animation, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkMisc
                           +----GtkImage}}
\section{Interfaces}{GtkImage implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkImage}} widget displays an image. Various kinds of object 
can be displayed as an image; most typically, you would load a 
\verb{\link{GdkPixbuf}} ("pixel buffer") from a file, and then display that. 
There's a convenience function to do this, \code{\link{gtkImageNewFromFile}},
used as follows:
\preformatted{
image <- gtkImageNewFromFile("myfile.png")
# or, perhaps more conveniently
image <- gtkImage(file="myfile.png")
}
If the file isn't loaded successfully, the image will contain a
"broken image" icon similar to that used in many web browsers.
If you want to handle errors in loading the file yourself, 
for example by displaying an error message, then load the image with
\code{\link{gdkPixbufNewFromFile}}, then create the \verb{\link{GtkImage}} with 
\code{\link{gtkImageNewFromPixbuf}}.
  
The image file may contain an animation, if so the \verb{\link{GtkImage}} will 
display an animation (\verb{\link{GdkPixbufAnimation}}) instead of a static image.
  \verb{\link{GtkImage}} is a subclass of \verb{\link{GtkMisc}}, which implies that you can 
align it (center, left, right) and add padding to it, using 
\verb{\link{GtkMisc}} methods.
  \verb{\link{GtkImage}} is a "no window" widget (has no \verb{\link{GdkWindow}} of its own), 
so by default does not receive events. If you want to receive events
on the image, such as button clicks, place the image inside a 
\verb{\link{GtkEventBox}}, then connect to the event signals on the event box.

 \emph{Handling button press events on a 
  \code{GtkImage}  .}
\preformatted{
# Handling button-press events on a GtkImage
button_press_callback <- function(event_box, event, data) {
  print(paste("Event box clicked at coordinates ", event[["x"]], ",",
              event[["y"]], sep=""))

  ## Returning TRUE means we handled the event, so the signal 
  ## emission should be stopped (don't call any further 
  ## callbacks that may be connected). Return FALSE
  ## to continue invoking callbacks.
  
  return(TRUE)
}

create_image <- function() {
  image <- gtkImage(file="myfile.png")
  
  event_box <- gtkEventBox()
  event_box$add(image)
  
  
  gSignalConnect(event_box, "button_press_event", button_press_callback, image)
  
  return(image)
}
}
  
When handling events on the event box, keep in mind that coordinates
in the image may be different from event box coordinates due to 
the alignment and padding settings on the image (see \verb{\link{GtkMisc}}). 
The simplest way to solve this is to set the alignment to 0.0
(left/top), and set the padding to zero. Then the origin of 
the image will be the same as the origin of the event box.
  
Sometimes an application will want to avoid depending on external data
files, such as image files. GTK+ comes with a program to avoid this,
called \command{gdk-pixbuf-csource}. This program
allows you to convert an image into a C variable declaration, which
can then be loaded into a \verb{\link{GdkPixbuf}} using
\code{gdkPixbufNewFromInline()}.}
\section{Structures}{\describe{\item{\verb{GtkImage}}{
This struct contain private data only and should be accessed by the functions
below.

}}}
\section{Convenient Construction}{\code{gtkImage} is the result of collapsing the constructors of \code{GtkImage} (\code{\link{gtkImageNew}}, \code{\link{gtkImageNewFromPixmap}}, \code{\link{gtkImageNewFromImage}}, \code{\link{gtkImageNewFromFile}}, \code{\link{gtkImageNewFromPixbuf}}, \code{\link{gtkImageNewFromStock}}, \code{\link{gtkImageNewFromIconSet}}, \code{\link{gtkImageNewFromAnimation}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\verb{GtkImageType}}{
Describes the image data representation used by a \verb{\link{GtkImage}}. If you
want to get the image from the widget, you can only get the
currently-stored representation. e.g.  if the
\code{\link{gtkImageGetStorageType}} returns \verb{GTK_IMAGE_PIXBUF}, then you can
call \code{\link{gtkImageGetPixbuf}} but not \code{\link{gtkImageGetStock}}.  For empty
images, you can request any storage type (call any of the "get"
functions), but they will all return \code{NULL} values.

\describe{
\item{\verb{empty}}{there is no image displayed by the widget}
\item{\verb{pixmap}}{the widget contains a \verb{\link{GdkPixmap}}}
\item{\verb{image}}{the widget contains a \verb{\link{GdkImage}}}
\item{\verb{pixbuf}}{the widget contains a \verb{\link{GdkPixbuf}}}
\item{\verb{stock}}{the widget contains a stock icon name (see )}
\item{\verb{icon-set}}{the widget contains a \verb{\link{GtkIconSet}}}
\item{\verb{animation}}{the widget contains a \verb{\link{GdkPixbufAnimation}}}
}

}}}
\section{Properties}{\describe{
\item{\verb{file} [character : *                : Read / Write]}{

Filename to load and display.  Default value: NULL

}
\item{\verb{icon-name} [character : *                : Read / Write]}{

The name of the icon in the icon theme. If the icon theme is
changed, the image will be updated automatically.  

  Default value: NULL  Since  2.6

}
\item{\verb{icon-set} [\verb{\link{GtkIconSet}} : *           : Read / Write]}{

Icon set to display.

}
\item{\verb{icon-size} [integer : Read / Write]}{

Symbolic size to use for stock icon, icon set or named icon.  Allowed values: >= 0  Default value: 4

}
\item{\verb{image} [\verb{\link{GdkImage}} : *             : Read / Write]}{

A GdkImage to display.

}
\item{\verb{mask} [\verb{\link{GdkPixmap}} : *            : Read / Write]}{

Mask bitmap to use with GdkImage or GdkPixmap.

}
\item{\verb{pixbuf} [\verb{\link{GdkPixbuf}} : *            : Read / Write]}{

A GdkPixbuf to display.

}
\item{\verb{pixbuf-animation} [\verb{\link{GdkPixbufAnimation}} : *   : Read / Write]}{

GdkPixbufAnimation to display.

}
\item{\verb{pixel-size} [integer : Read / Write]}{

The "pixel-size" property can be used to specify a fixed size
overriding the \verb{"icon-size"} property for images of type 
\code{GTK_IMAGE_ICON_NAME}.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\verb{pixmap} [\verb{\link{GdkPixmap}} : *            : Read / Write]}{

A GdkPixmap to display.

}
\item{\verb{stock} [character : *                : Read / Write]}{

Stock ID for a stock image to display.  Default value: NULL

}
\item{\verb{storage-type} [\code{\link{GtkImageType}} : Read]}{

The representation being used for image data.  Default value: GTK_IMAGE_EMPTY

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkImage.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\verb{\link{GdkPixbuf}}}
\keyword{internal}

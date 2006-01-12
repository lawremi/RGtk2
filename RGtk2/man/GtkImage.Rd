\alias{GtkImage}
\alias{gtkImage}
\alias{GtkImageType}
\name{GtkImage}
\title{GtkImage}
\description{A widget displaying an image}
\usage{
\link{gtkImageGetIconSet}(object)
\link{gtkImageGetImage}(object)
\link{gtkImageGetPixbuf}(object)
\link{gtkImageGetPixmap}(object)
\link{gtkImageGetStock}(object)
\link{gtkImageGetAnimation}(object)
\link{gtkImageGetIconName}(object)
\link{gtkImageGetStorageType}(object)
\link{gtkImageNewFromFile}(filename, show = TRUE)
\link{gtkImageNewFromIconSet}(icon.set, size)
\link{gtkImageNewFromImage}(image = NULL, mask = NULL, show = TRUE)
\link{gtkImageNewFromPixbuf}(pixbuf = NULL, show = TRUE)
\link{gtkImageNewFromPixmap}(pixmap = NULL, mask = NULL, show = TRUE)
\link{gtkImageNewFromStock}(stock.id, size)
\link{gtkImageNewFromAnimation}(animation)
\link{gtkImageNewFromIconName}(icon.name, size)
\link{gtkImageSetFromFile}(object, filename = NULL)
\link{gtkImageSetFromIconSet}(object, icon.set, size)
\link{gtkImageSetFromImage}(object, gdk.image = NULL, mask = NULL)
\link{gtkImageSetFromPixbuf}(object, pixbuf = NULL)
\link{gtkImageSetFromPixmap}(object, pixmap, mask = NULL)
\link{gtkImageSetFromStock}(object, stock.id, size)
\link{gtkImageSetFromAnimation}(object, animation)
\link{gtkImageSetFromIconName}(object, icon.name, size)
\link{gtkImageClear}(object)
\link{gtkImageNew}(show = TRUE)
\link{gtkImageSet}(object, val, mask)
\link{gtkImageGet}(object)
\link{gtkImageSetPixelSize}(object, pixel.size)
\link{gtkImageGetPixelSize}(object)
gtkImage(mask = NULL, pixmap = NULL, image = NULL, filename, pixbuf = NULL, show = TRUE)
}
\details{The \code{\link{GtkImage}} widget displays an image. Various kinds of object 
can be displayed as an image; most typically, you would load a 
\code{\link{GdkPixbuf}} ("pixel buffer") from a file, and then display that. 
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
\code{\link{gdkPixbufNewFromFile}}, then create the \code{\link{GtkImage}} with 
\code{\link{gtkImageNewFromPixbuf}}.
  
The image file may contain an animation, if so the \code{\link{GtkImage}} will 
display an animation (\code{\link{GdkPixbufAnimation}}) instead of a static image.
  
\code{\link{GtkImage}} is a subclass of \code{\link{GtkMisc}}, which implies that you can 
align it (center, left, right) and add padding to it, using 
\code{\link{GtkMisc}} methods.
  
\code{\link{GtkImage}} is a "no window" widget (has no \code{\link{GdkWindow}} of its own), 
so by default does not receive events. If you want to receive events
on the image, such as button clicks, place the image inside a 
\code{\link{GtkEventBox}}, then connect to the event signals on the event box.
\preformatted{
# Handling button-press events on a GtkImage
  button_press_callback <- (event_box, event, data)
  {
    print(paste("Event box clicked at coordinates ", event[["x"]], ",", event[["y"]]), sep="") 

    # Returning TRUE means we handled the event, so the signal 
     # emission should be stopped (don't call any further 
     # callbacks that may be connected). Return FALSE
     # to continue invoking callbacks.

    return(TRUE)
  }

 create_image <- function()
  {
    image <- gtkImage(file="myfile.png")

    event_box <- gtkEventBox()
	event_box$add(image)

	
    gSignalConnect(event_box, "button_press_event", button_press_callback, image)

    return(image)
  }
}
  
When handling events on the event box, keep in mind that coordinates
in the image may be different from event box coordinates due to 
the alignment and padding settings on the image (see \code{\link{GtkMisc}}). 
The simplest way to solve this is to set the alignment to 0.0
(left/top), and set the padding to zero. Then the origin of 
the image will be the same as the origin of the event box.
  
Sometimes an application will want to avoid depending on external data
files, such as image files. GTK+ comes with a program to avoid this,
called \command{gdk-pixbuf-csource}. This program
allows you to convert an image into a C variable declaration, which
can then be loaded into a \code{\link{GdkPixbuf}} using
\code{gdkPixbufNewFromInline()}.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkMisc}
                     +----GtkImage}}
\section{Structures}{\describe{\item{\code{GtkImage}}{
This struct contain private data only and should be accessed by the functions
below.

}}}
\section{Convenient Construction}{\code{gtkImage} is the result of collapsing the constructors of \code{GtkImage} (\code{\link{gtkImageNew}}, \code{\link{gtkImageNewFromPixmap}}, \code{\link{gtkImageNewFromImage}}, \code{\link{gtkImageNewFromFile}}, \code{\link{gtkImageNewFromPixbuf}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\code{enum GtkImageType}}{
Describes the image data representation used by a \code{\link{GtkImage}}. If you
want to get the image from the widget, you can only get the
currently-stored representation. e.g.  if the
\code{\link{gtkImageGetStorageType}} returns \code{GTK_IMAGE_PIXBUF}, then you can
call \code{\link{gtkImageGetPixbuf}} but not \code{\link{gtkImageGetStock}}.  For empty
images, you can request any storage type (call any of the "get"
functions), but they will all return \code{NULL} values.

\describe{
\item{\code{GTK_IMAGE_EMPTY (empty)}}{there is no image displayed by the widget}
\item{\code{GTK_IMAGE_PIXMAP (pixmap)}}{the widget contains a \code{\link{GdkPixmap}}}
\item{\code{GTK_IMAGE_IMAGE (image)}}{the widget contains a \code{\link{GdkImage}}}
\item{\code{GTK_IMAGE_PIXBUF (pixbuf)}}{the widget contains a \code{\link{GdkPixbuf}}}
\item{\code{GTK_IMAGE_STOCK (stock)}}{the widget contains a stock icon name (see )}
\item{\code{GTK_IMAGE_ICON_SET (icon-set)}}{the widget contains a \code{\link{GtkIconSet}}}
\item{\code{GTK_IMAGE_ANIMATION (animation)}}{the widget contains a \code{\link{GdkPixbufAnimation}}}
}

}}}
\section{Interfaces}{GtkImage implements
 AtkImplementorIface.}
\section{Properties}{\describe{
\item{\code{file} [character : Read / Write]}{

Filename to load and display.  Default value: NULL

}
\item{\code{icon-name} [character : Read / Write]}{

The name of the icon in the icon theme.  If the icon theme is
changed, the image will be updated automatically.  

  Default value: NULL  Since  2.6

}
\item{\code{icon-set} [\code{\link{GtkIconSet}} : Read / Write]}{

Icon set to display.

}
\item{\code{icon-size} [integer : Read / Write]}{

Symbolic size to use for stock icon, icon set or named icon.  Allowed values: >= 0  Default value: 4

}
\item{\code{image} [\code{\link{GdkImage}} : Read / Write]}{

A GdkImage to display.

}
\item{\code{mask} [\code{\link{GdkPixmap}} : Read / Write]}{

Mask bitmap to use with GdkImage or GdkPixmap.

}
\item{\code{pixbuf} [\code{\link{GdkPixbuf}} : Read / Write]}{

A GdkPixbuf to display.

}
\item{\code{pixbuf-animation} [\code{\link{GdkPixbufAnimation}} : Read / Write]}{

GdkPixbufAnimation to display.

}
\item{\code{pixel-size} [integer : Read / Write]}{

The :pixel-size property can be used to specify a fixed size
overriding the :icon-size property for images of type 
\code{GTK_IMAGE_ICON_NAME}.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{pixmap} [\code{\link{GdkPixmap}} : Read / Write]}{

A GdkPixmap to display.

}
\item{\code{stock} [character : Read / Write]}{

Stock ID for a stock image to display.  Default value: NULL

}
\item{\code{storage-type} [\code{\link{GtkImageType}} : Read]}{

The representation being used for image data.  Default value: GTK_IMAGE_EMPTY

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkImage.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GdkPixbuf}}}
\keyword{internal}

\name{RGtk}
\alias{RGtk}
\title{The RGtk2 package}
\description{
RGtk2 provides a set of bindings between R and the GTK+ library and 
several of its dependent libraries. It allows the user to construct full-featured
GUI's completely from within R. 
}
\details{
RGtk2 binds to the following libraries:
\describe{
\item{\link{ATK}}{ATK is the Accessibility Toolkit. It provides a set of generic interfaces 
allowing accessibility technologies to interact with a graphical user interface. 
For example, a screen reader uses ATK to discover the text in an interface and 
read it to blind users. GTK+ widgets have built-in support for accessibility 
using the ATK framework.}
\item{\link{Pango}}{Pango is a library for internationalized text handling. 
It centers around the \code{\link{PangoLayout}} object, representing a 
paragraph of text. Pango provides the engine for \code{\link{GtkTextView}}, 
\code{\link{GtkLabel}}, \code{\link{GtkEntry}}, and other widgets that display text.}
\item{\link{GDK}}{GDK is the abstraction layer that allows GTK+ to support multiple 
windowing systems. GDK provides drawing and window system facilities on X11, 
Windows, and the Linux framebuffer device.}
\item{\link{GTK}}{The GTK+ library itself contains widgets, that is, GUI components 
such as \code{\link{GtkButton}} or \code{\link{GtkTextView}}.}
\item{\link{GDK-Pixbuf}}{This is a small library which allows you to create GdkPixbuf 
('pixel buffer') objects from image data or image files. Use a 
\code{\link{GdkPixbuf}} in combination with \code{\link{GtkImage}} to display images.}
\item{\link{Cairo}}{Cairo is a 2D graphics library with support for multiple output 
devices. Currently supported output targets include the X Window System, win32, 
and image buffers.}
}

RGtk2 also partially binds some lower-level libraries in order to support the bindings 
to the others. These include \link{GObject} and \link{GMainLoop}.

R objects passed between the user and RGtk2 are either primitive types 
(\code{character}, \code{logical}, etc) or external objects (\code{externalptr}). All 
R objects wrapping external objects extend the \code{\link{RGtkObject}} class.
}
\note{
As described above, RGtk2 binds many libraries beyond GTK+ itself. Thus, it can 
serve many purposes besides GUI construction. For example, \link{GDKPixbuf} 
and \link{Cairo} allow the R user to produce arbitary high-quality graphics.
}
\references{
  Michael Lawrence, Duncan Temple Lang (2010). RGtk2: A Graphical User
  Interface Toolkit for R. Journal of Statistical Software, 37(8),
  1-52. \url{https://www.jstatsoft.org/v37/i08/}.
}
\author{Michael Lawrence, with excerpts from library documentation}
\keyword{interface}



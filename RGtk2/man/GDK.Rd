\alias{GDK}
\name{GDK}
\title{GDK}
\description{GDK is the abstraction layer that allows GTK+ to support multiple windowing systems. GDK provides drawing and window system facilities on X11, Windows, and the Linux framebuffer device.}
\details{
The RGtk binding to the GDK library consists of the following components:
\describe{
\item{\link{gdk-Cairo-Interaction}}{Functions to support using Cairo}
\item{\link{gdk-Colormaps-and-Colors}}{Manipulation of colors and colormaps}
\item{\link{gdk-Cursors}}{Standard and pixmap cursors}
\item{\link{gdk-Drag-and-Drop}}{Functions for controlling drag and drop handling}
\item{\link{gdk-Drawing-Primitives}}{Functions for drawing points, lines, arcs, and text}
\item{\link{gdk-Event-Structures}}{Data structures specific to each type of event}
\item{\link{gdk-Events}}{Functions for handling events from the window system}
\item{\link{gdk-Fonts}}{Loading and manipulating fonts}
\item{\link{gdk-Graphics-Contexts}}{Objects to encapsulate drawing properties}
\item{\link{gdk-Application-launching}}{Startup notification for applications}
\item{\link{GdkDisplay}}{Controls the keyboard/mouse pointer grabs and a set of   s}
\item{\link{GdkDisplayManager}}{Maintains a list of all open   s}
\item{\link{GdkScreen}}{Object representing a physical screen}
\item{\link{gdk-Testing}}{Test utilities}
\item{\link{gdk-General}}{Library initialization and miscellaneous functions}
\item{\link{gdk-Images}}{A client-side area for bit-mapped graphics}
\item{\link{gdk-Input-Devices}}{Functions for handling extended input devices}
\item{\link{gdk-Keyboard-Handling}}{Functions for manipulating keyboard codes}
\item{\link{gdk-Pango-Interaction}}{Using Pango in GDK}
\item{\link{gdk-Pixbufs}}{Functions for rendering pixbufs on drawables}
\item{\link{gdk-Bitmaps-and-Pixmaps}}{Offscreen drawables}
\item{\link{gdk-Properties-and-Atoms}}{Functions to manipulate properties on windows}
\item{\link{gdk-Points-Rectangles-and-Regions}}{Simple graphical data types}
\item{\link{gdk-GdkRGB}}{Renders RGB, grayscale, or indexed image data to a GdkDrawable}
\item{\link{gdk-Visuals}}{Low-level display hardware information}
\item{\link{gdk-Windows}}{Onscreen display areas in the target window system}
}
}
\references{\url{https://developer-old.gnome.org/gdk2/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{interface}

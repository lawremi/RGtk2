\alias{GtkButtonBox}
\name{GtkButtonBox}
\title{GtkButtonBox}
\description{Base class for GtkHButtonBox and GtkVButtonBox}
\section{Methods and Functions}{
\code{\link{gtkButtonBoxGetLayout}(object)}\cr
\code{\link{gtkButtonBoxGetChildSize}(object)}\cr
\code{\link{gtkButtonBoxGetChildIpadding}(object)}\cr
\code{\link{gtkButtonBoxGetChildSecondary}(object, child)}\cr
\code{\link{gtkButtonBoxSetLayout}(object, layout.style)}\cr
\code{\link{gtkButtonBoxSetChildSize}(object, min.width, min.height)}\cr
\code{\link{gtkButtonBoxSetChildIpadding}(object, ipad.x, ipad.y)}\cr
\code{\link{gtkButtonBoxSetChildSecondary}(object, child, is.secondary)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkButtonBox
                                       +----GtkHButtonBox
                                       +----GtkVButtonBox}}
\section{Interfaces}{GtkButtonBox implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The primary purpose of this class is to keep track of the various properties
of \code{\link{GtkHButtonBox}} and \code{\link{GtkVButtonBox}} widgets.
  \code{\link{gtkButtonBoxGetChildSize}} retrieves the minimum width and height
for widgets in a given button box. \code{\link{gtkButtonBoxSetChildSize}}
allows those properties to be changed.
  
The internal padding of buttons can be retrieved and changed per button box using
\code{\link{gtkButtonBoxGetChildIpadding}} and \code{\link{gtkButtonBoxSetChildIpadding}}
respectively.
  \code{gtkButtonBoxGetSpacing()} and \code{gtkButtonBoxSetSpacing()} retrieve and
change default number of pixels between buttons, respectively.
  \code{\link{gtkButtonBoxGetLayout}} and \code{\link{gtkButtonBoxSetLayout}} retrieve and alter the method
used to spread the buttons in a button box across the container, respectively.
  
The main purpose of GtkButtonBox is to make sure the children have all the same size.
Therefore it ignores the homogeneous property which it inherited from GtkBox, and always
behaves as if homogeneous was \code{TRUE}.}
\section{Structures}{\describe{\item{\verb{GtkButtonBox}}{
This is a read-only struct; no members should be modified directly.

}}}
\section{Properties}{\describe{\item{\verb{layout-style} [\code{\link{GtkButtonBoxStyle}} : Read / Write]}{

How to layout the buttons in the box. Possible values are default, spread, edge, start and end.  Default value: GTK_BUTTONBOX_DEFAULT_STYLE

}}}
\section{Style Properties}{\describe{
\item{\verb{child-internal-pad-x} [integer : Read]}{

Amount to increase child's size on either side.  Allowed values: >= 0  Default value: 4

}
\item{\verb{child-internal-pad-y} [integer : Read]}{

Amount to increase child's size on the top and bottom.  Allowed values: >= 0  Default value: 0

}
\item{\verb{child-min-height} [integer : Read]}{

Minimum height of buttons inside the box.  Allowed values: >= 0  Default value: 27

}
\item{\verb{child-min-width} [integer : Read]}{

Minimum width of buttons inside the box.  Allowed values: >= 0  Default value: 85

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkButtonBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

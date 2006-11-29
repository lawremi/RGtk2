\alias{GtkBox}
\alias{GtkBoxChild}
\name{GtkBox}
\title{GtkBox}
\description{Base class for box containers}
\section{Methods and Functions}{
\code{\link{gtkBoxPackStart}(object, child, expand = TRUE, fill = TRUE, padding = 0)}\cr
\code{\link{gtkBoxPackEnd}(object, child, expand = TRUE, fill = TRUE, padding = 0)}\cr
\code{\link{gtkBoxPackStartDefaults}(object, widget)}\cr
\code{\link{gtkBoxPackEndDefaults}(object, widget)}\cr
\code{\link{gtkBoxGetHomogeneous}(object)}\cr
\code{\link{gtkBoxSetHomogeneous}(object, homogeneous)}\cr
\code{\link{gtkBoxGetSpacing}(object)}\cr
\code{\link{gtkBoxSetSpacing}(object, spacing)}\cr
\code{\link{gtkBoxReorderChild}(object, child, position)}\cr
\code{\link{gtkBoxQueryChildPacking}(object, child)}\cr
\code{\link{gtkBoxSetChildPacking}(object, child, expand, fill, padding, pack.type)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----GtkBox
                                 +----\link{GtkButtonBox}
                                 +----\link{GtkVBox}
                                 +----\link{GtkHBox}}}
\section{Interfaces}{GtkBox implements
 AtkImplementorIface.}
\section{Detailed Description}{GtkBox is an abstract widget which encapsulates functionallity for a
particular kind of container, one that organizes a variable number of
widgets into a rectangular area.  GtkBox currently has two derived
classes, \code{\link{GtkHBox}} and \code{\link{GtkVBox}}.
  \code{\link{GtkHBox}}  \code{GtkHBox}  \code{\link{GtkVBox}}  \code{GtkVBox}  
The rectangular area of a GtkBox is organized into either a single row
or a single column of child widgets depending upon whether the box is
of type \code{\link{GtkHBox}} or \code{\link{GtkVBox}}, respectively.  Thus, all children of a
GtkBox are allocated one dimension in common, which is the height of a
row, or the width of a column.
  \code{\link{GtkHBox}}  \code{GtkHBox}  \code{\link{GtkVBox}}  \code{GtkVBox}  
GtkBox uses a notion of \emph{packing}.  Packing refers to
adding widgets with reference to a particular position in a
\code{\link{GtkContainer}}.  For a GtkBox, there are two reference positions: the
\emph{start} and the \emph{end} of the box.  For a
\code{\link{GtkVBox}}, the start is defined as the top of the box and the end is
defined as the bottom.  For a \code{\link{GtkHBox}} the start is defined as the
left side and the end is defined as the right side.
  \emph{packing}  \code{\link{GtkContainer}}  \code{GtkContainer}  \emph{start}  \emph{end}  \code{\link{GtkVBox}}  \code{GtkVBox}  \code{\link{GtkHBox}}  \code{GtkHBox}  
Use repeated calls to \code{\link{gtkBoxPackStart}} to pack widgets into a
GtkBox from start to end.  Use \code{\link{gtkBoxPackEnd}} to add widgets from
end to start.  You may intersperse these calls and add widgets from
both ends of the same GtkBox.
  \code{\link{gtkBoxPackStart}}  \code{gtkBoxPackStart()}  \code{\link{gtkBoxPackEnd}}  \code{gtkBoxPackEnd()}  
Use \code{\link{gtkBoxPackStartDefaults}} or \code{\link{gtkBoxPackEndDefaults}}
to pack widgets into a GtkBox if you do not need to specify the
\code{expand}, \code{fill}, or
\code{padding} attributes of the child to be
added.
  \code{\link{gtkBoxPackStartDefaults}}  \code{gtkBoxPackStartDefaults()}  \code{\link{gtkBoxPackEndDefaults}}  \code{gtkBoxPackEndDefaults()}  \code{expand}  \code{fill}  \code{padding}  
Because GtkBox is a \code{\link{GtkContainer}}, you may also use
\code{\link{gtkContainerAdd}} to insert widgets into the box, and they will be
packed as if with \code{\link{gtkBoxPackStartDefaults}}.  Use
\code{\link{gtkContainerRemove}} to remove widgets from the GtkBox.
  \code{\link{GtkContainer}}  \code{GtkContainer}  \code{\link{gtkContainerAdd}}  \code{gtkContainerAdd()}  \code{\link{gtkBoxPackStartDefaults}}  \code{gtkBoxPackStartDefaults()}  \code{\link{gtkContainerRemove}}  \code{gtkContainerRemove()}  
Use \code{\link{gtkBoxSetHomogeneous}} to specify whether or not all children
of the GtkBox are forced to get the same amount of space.
  \code{\link{gtkBoxSetHomogeneous}}  \code{gtkBoxSetHomogeneous()}  
Use \code{\link{gtkBoxSetSpacing}} to determine how much space will be
minimally placed between all children in the GtkBox.
  \code{\link{gtkBoxSetSpacing}}  \code{gtkBoxSetSpacing()}  
Use \code{\link{gtkBoxReorderChild}} to move a GtkBox child to a different
place in the box.
  \code{\link{gtkBoxReorderChild}}  \code{gtkBoxReorderChild()}  
Use \code{\link{gtkBoxSetChildPacking}} to reset the
\code{expand}, \code{fill},
and \code{padding} attributes of any GtkBox child.
Use \code{\link{gtkBoxQueryChildPacking}} to query these fields.
  \code{\link{gtkBoxSetChildPacking}}  \code{gtkBoxSetChildPacking()}  \code{expand}  \code{fill}  \code{padding}  \code{\link{gtkBoxQueryChildPacking}}  \code{gtkBoxQueryChildPacking()}}
\section{Structures}{\describe{
\item{\code{GtkBox}}{
The \code{\link{GtkBox}} describes an instance of GtkBox and contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{
\code{list}   *   \code{children}  ; \tab a list of children belonging the GtkBox.  The data is a list of
structures of type   \code{\link{GtkBoxChild}}  . \cr
\code{integer}     \code{spacing}  ; \tab the number of pixels to put between children of the GtkBox, zero
by default.  Use   \code{\link{gtkBoxSetSpacing}}   to set this field. \cr
\code{numeric}     \code{homogeneous}  ; \tab a flag that if   \code{TRUE}   forces all children to get equal space in
the GtkBox;   \code{FALSE}   by default.  Use   \code{\link{gtkBoxSetHomogeneous}}   to set this
field. \cr
}

}
\item{\code{GtkBoxChild}}{
The \code{\link{GtkBoxChild}} holds a child widget of GtkBox and describes
how the child is to be packed into the GtkBox.  Use
\code{\link{gtkBoxQueryChildPacking}} and \code{\link{gtkBoxSetChildPacking}} to query
and reset the \code{padding},
\code{expand}, \code{fill},
and \code{pack} fields.
  
\code{\link{GtkBoxChild}} contains the following fields.  (These fields
should be considered read-only. They should never be directly set by an
application.)

\tabular{ll}{
\code{\link{GtkWidget}}   *   \code{widget}  ; \tab the child widget, packed into the GtkBox. \cr
\code{integer}     \code{padding}  ; \tab the number of extra pixels to put between this child and its
neighbors, set when packed, zero by default. \cr
\code{numeric}     \code{expand}  ; \tab flag indicates whether extra space should be given to this
child.  Any extra space given to the parent GtkBox is divided up among
all children with this attribute set to   \code{TRUE}  ; set when packed,   \code{TRUE}   by
default. \cr
\code{numeric}     \code{fill}  ; \tab flag indicates whether any extra space given to this child due to its
  \code{expand}   attribute being set is actually
allocated to the child, rather than being used as padding
around the widget; set when packed,   \code{TRUE}   by default. \cr
\code{numeric}     \code{pack}  ; \tab one of
  \code{\link{GtkPackType}}   indicating whether the child is packed with reference to
the start (top/left) or end (bottom/right) of the GtkBox. \cr
}

}
}}
\section{Properties}{\describe{
\item{\code{homogeneous} [logical : Read / Write]}{

Whether the children should all be the same size.  Default value: FALSE

}
\item{\code{spacing} [integer : Read / Write]}{

The amount of space between children.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

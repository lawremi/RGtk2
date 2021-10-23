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
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkButtonBox
                                 +----GtkVBox
                                 +----GtkHBox}}
\section{Interfaces}{GtkBox implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{GtkBox is an abstract widget which encapsulates functionality for a
particular kind of container, one that organizes a variable number of
widgets into a rectangular area.  GtkBox has a number of derived
classes, e.g. \code{\link{GtkHBox}} and \code{\link{GtkVBox}}.
  
The rectangular area of a GtkBox is organized into either a single row
or a single column of child widgets depending upon whether the box is
of type \code{\link{GtkHBox}} or \code{\link{GtkVBox}}, respectively.  Thus, all children of a
GtkBox are allocated one dimension in common, which is the height of a
row, or the width of a column.
  
GtkBox uses a notion of \emph{packing}.  Packing refers to
adding widgets with reference to a particular position in a
\code{\link{GtkContainer}}.  For a GtkBox, there are two reference positions: the
\emph{start} and the \emph{end} of the box.
For a \code{\link{GtkVBox}}, the start is defined as the top of the box and the end is
defined as the bottom.  For a \code{\link{GtkHBox}} the start is defined as the
left side and the end is defined as the right side.
  
Use repeated calls to \code{\link{gtkBoxPackStart}} to pack widgets into a
GtkBox from start to end.  Use \code{\link{gtkBoxPackEnd}} to add widgets from
end to start.  You may intersperse these calls and add widgets from
both ends of the same GtkBox.
  
Use \code{\link{gtkBoxPackStartDefaults}} or \code{\link{gtkBoxPackEndDefaults}}
to pack widgets into a GtkBox if you do not need to specify the
\verb{"expand"}, \verb{"fill"}, or \verb{"padding"} child properties
for the child to be added.
  
Because GtkBox is a \code{\link{GtkContainer}}, you may also use
\code{\link{gtkContainerAdd}} to insert widgets into the box, and they will be
packed as if with \code{\link{gtkBoxPackStartDefaults}}.  Use
\code{\link{gtkContainerRemove}} to remove widgets from the GtkBox.
  
Use \code{\link{gtkBoxSetHomogeneous}} to specify whether or not all children
of the GtkBox are forced to get the same amount of space.
  
Use \code{\link{gtkBoxSetSpacing}} to determine how much space will be
minimally placed between all children in the GtkBox.
  
Use \code{\link{gtkBoxReorderChild}} to move a GtkBox child to a different
place in the box.
  
Use \code{\link{gtkBoxSetChildPacking}} to reset the \verb{"expand"},
\verb{"fill"} and \verb{"padding"} child properties.
Use \code{\link{gtkBoxQueryChildPacking}} to query these fields.}
\section{Structures}{\describe{
\item{\verb{GtkBox}}{
The \code{\link{GtkBox}} describes an instance of GtkBox and contains the
following fields.  (These fields should be considered read-only.
They should never be set by an application.)

\describe{
\item{\verb{spacing}}{[integer] }
\item{\verb{homogeneous}}{[numeric] }
}

}
\item{\verb{GtkBoxChild}}{
The \code{\link{GtkBoxChild}} holds a child widget of GtkBox and describes
how the child is to be packed into the GtkBox.  Use
\code{\link{gtkBoxQueryChildPacking}} and \code{\link{gtkBoxSetChildPacking}} to query
and reset the \code{padding},
\code{expand}, \code{fill},
and \code{pack} fields.
  \code{\link{GtkBoxChild}} contains the following fields.  (These fields
should be considered read-only. They should never be directly set by an
application.)

\describe{
\item{\verb{widget}}{[\code{\link{GtkWidget}}] the child widget, packed into the GtkBox.}
\item{\verb{padding}}{[integer] the number of extra pixels to put between this child and its
neighbors, set when packed, zero by default.}
\item{\verb{expand}}{[numeric] flag indicates whether extra space should be given to this
child. Any extra space given to the parent GtkBox is divided up
among all children with this attribute set to \code{TRUE}; set when packed,
\code{TRUE} by default.}
\item{\verb{fill}}{[numeric] flag indicates whether any extra space given to this child due
to its \code{expand} attribute being set is actually allocated to the child,
rather than being used as padding around the widget; set when packed,
\code{TRUE} by default.}
\item{\verb{pack}}{[numeric] one of \code{\link{GtkPackType}} indicating whether the child is packed with
reference to the start (top/left) or end (bottom/right) of the GtkBox.}
\item{\verb{isSecondary}}{[numeric] \code{TRUE} if the child is secondary}
}

}
}}
\section{Properties}{\describe{
\item{\verb{homogeneous} [logical : Read / Write]}{

Whether the children should all be the same size.  Default value: FALSE

}
\item{\verb{spacing} [integer : Read / Write]}{

The amount of space between children.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

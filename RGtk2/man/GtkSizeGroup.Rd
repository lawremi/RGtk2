\alias{GtkSizeGroup}
\alias{gtkSizeGroup}
\alias{GtkSizeGroupMode}
\name{GtkSizeGroup}
\title{GtkSizeGroup}
\description{Grouping widgets so they request the same size}
\usage{
\link{gtkSizeGroupNew}(mode = NULL)
\link{gtkSizeGroupSetMode}(object, mode)
\link{gtkSizeGroupGetMode}(object)
\link{gtkSizeGroupSetIgnoreHidden}(object, ignore.hidden)
\link{gtkSizeGroupGetIgnoreHidden}(object)
\link{gtkSizeGroupAddWidget}(object, widget)
\link{gtkSizeGroupRemoveWidget}(object, widget)
gtkSizeGroup(mode = NULL)
}
\details{\code{\link{GtkSizeGroup}} provides a mechanism for grouping a number of widgets
together so they all request the same amount of space.  This is
typically useful when you want a column of widgets to have the same
size, but you can't use a \code{\link{GtkTable}} widget.
  
In detail, the size requested for each widget in a \code{\link{GtkSizeGroup}} is
the maximum of the sizes that would have been requested for each
widget in the size group if they were not in the size group. The mode
of the size group (see \code{\link{gtkSizeGroupSetMode}}) determines whether
this applies to the horizontal size, the vertical size, or both sizes.
  
Note that size groups only affect the amount of space requested, not
the size that the widgets finally receive. If you want the widgets in
a \code{\link{GtkSizeGroup}} to actually be the same size, you need to pack them in
such a way that they get the size they request and not more. For
example, if you are packing your widgets into a table, you would not
include the \code{GTK_FILL} flag.
  
\code{\link{GtkSizeGroup}} objects are referenced by each widget in the size group,
so once you have added all widgets to a \code{\link{GtkSizeGroup}}, you can drop
the initial reference to the size group with \code{gObjectUnref()}. If the
widgets in the size group are subsequently destroyed, then they will
be removed from the size group and drop their references on the size
group; when all widgets have been removed, the size group will be
freed.
  
Widgets can be part of multiple size groups; GTK+ will compute the
horizontal size of a widget from the horizontal requisition of all
widgets that can be reached from the widget by a chain of size groups
of type \code{GTK_SIZE_GROUP_HORIZONTAL} or \code{GTK_SIZE_GROUP_BOTH}, and the
vertical size from the vertical requisition of all widgets that can be
reached from the widget by a chain of size groups of type
\code{GTK_SIZE_GROUP_VERTICAL} or \code{GTK_SIZE_GROUP_BOTH}.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkSizeGroup}}
\section{Structures}{\describe{\item{\code{GtkSizeGroup}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkSizeGroup} is the equivalent of \code{\link{gtkSizeGroupNew}}.}
\section{Enums and Flags}{\describe{\item{\code{enum GtkSizeGroupMode}}{
The mode of the size group determines the directions in which the size
group affects the requested sizes of its component widgets.  

\describe{
\item{\code{GTK_SIZE_GROUP_NONE (none)}}{ group has no effect  }
\item{\code{GTK_SIZE_GROUP_HORIZONTAL (horizontal)}}{ group affects horizontal requisition}
\item{\code{GTK_SIZE_GROUP_VERTICAL (vertical)}}{ group affects vertical requisition}
\item{\code{GTK_SIZE_GROUP_BOTH (both)}}{ group affects both horizontal and vertical requisition}
}

}}}
\section{Properties}{\describe{
\item{\code{ignore-hidden} [logical : Read / Write]}{

If \code{TRUE}, hidden widgets are ignored when determining 
the size of the group.  

  Default value: FALSE  Since  2.8

}
\item{\code{mode} [\code{\link{GtkSizeGroupMode}} : Read / Write]}{

The directions in which the size group affects the requested sizes of its component widgets.  Default value: GTK_SIZE_GROUP_HORIZONTAL

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkSizeGroup.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

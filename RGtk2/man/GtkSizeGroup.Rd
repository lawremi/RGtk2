\alias{GtkSizeGroup}
\alias{gtkSizeGroup}
\alias{GtkSizeGroupMode}
\name{GtkSizeGroup}
\title{GtkSizeGroup}
\description{Grouping widgets so they request the same size}
\section{Methods and Functions}{
\code{\link{gtkSizeGroupNew}(mode = NULL)}\cr
\code{\link{gtkSizeGroupSetMode}(object, mode)}\cr
\code{\link{gtkSizeGroupGetMode}(object)}\cr
\code{\link{gtkSizeGroupSetIgnoreHidden}(object, ignore.hidden)}\cr
\code{\link{gtkSizeGroupGetIgnoreHidden}(object)}\cr
\code{\link{gtkSizeGroupAddWidget}(object, widget)}\cr
\code{\link{gtkSizeGroupRemoveWidget}(object, widget)}\cr
\code{\link{gtkSizeGroupGetWidgets}(object)}\cr
\code{gtkSizeGroup(mode = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkSizeGroup}}
\section{Interfaces}{GtkSizeGroup implements
 \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkSizeGroup}} provides a mechanism for grouping a number of widgets
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
\section{GtkSizeGroup as GtkBuildable}{Size groups can be specified in a UI definition by placing an
<object> element with \code{class="GtkSizeGroup"}
somewhere in the UI definition. The widgets that belong to the
size group are specified by a <widgets> element that may
contain multiple <widget> elements, one for each member
of the size group. The name attribute gives the id of the widget.
  
 \emph{A UI definition fragment with GtkSizeGroup}\preformatted{<object class="GtkSizeGroup">
  <property name="mode">GTK_SIZE_GROUP_HORIZONTAL</property>
  <widgets>
    <widget name="radio1"/>
    <widget name="radio2"/>
  </widgets>
</object>
}}
\section{Structures}{\describe{\item{\verb{GtkSizeGroup}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkSizeGroup} is the equivalent of \code{\link{gtkSizeGroupNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkSizeGroupMode}}{
The mode of the size group determines the directions in which the size
group affects the requested sizes of its component widgets.

\describe{
\item{\verb{none}}{group has no effect}
\item{\verb{horizontal}}{group affects horizontal requisition}
\item{\verb{vertical}}{group affects vertical requisition}
\item{\verb{both}}{group affects both horizontal and vertical requisition}
}

}}}
\section{Properties}{\describe{
\item{\verb{ignore-hidden} [logical : Read / Write]}{

If \code{TRUE}, unmapped widgets are ignored when determining
the size of the group.
  Default value: FALSE  Since 2.8

}
\item{\verb{mode} [\code{\link{GtkSizeGroupMode}} : Read / Write]}{

The directions in which the size group affects the requested sizes of its component widgets.  Default value: GTK_SIZE_GROUP_HORIZONTAL

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkSizeGroup.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

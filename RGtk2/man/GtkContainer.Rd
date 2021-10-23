\alias{GtkContainer}
\name{GtkContainer}
\title{GtkContainer}
\description{Base class for widgets which contain other widgets}
\section{Methods and Functions}{
\code{\link{gtkContainerAdd}(object, widget)}\cr
\code{\link{gtkContainerRemove}(object, widget)}\cr
\code{\link{gtkContainerAddWithProperties}(object, widget, ...)}\cr
\code{\link{gtkContainerGetResizeMode}(object)}\cr
\code{\link{gtkContainerSetResizeMode}(object, resize.mode)}\cr
\code{\link{gtkContainerCheckResize}(object)}\cr
\code{\link{gtkContainerForeach}(object, callback, callback.data = NULL)}\cr
\code{\link{gtkContainerForeachFull}(object, callback, callback.data = NULL)}\cr
\code{\link{gtkContainerGetChildren}(object)}\cr
\code{\link{gtkContainerSetReallocateRedraws}(object, needs.redraws)}\cr
\code{\link{gtkContainerGetFocusChild}(object)}\cr
\code{\link{gtkContainerSetFocusChild}(object, child)}\cr
\code{\link{gtkContainerGetFocusVadjustment}(object)}\cr
\code{\link{gtkContainerSetFocusVadjustment}(object, adjustment)}\cr
\code{\link{gtkContainerGetFocusHadjustment}(object)}\cr
\code{\link{gtkContainerSetFocusHadjustment}(object, adjustment)}\cr
\code{\link{gtkContainerResizeChildren}(object)}\cr
\code{\link{gtkContainerChildType}(object)}\cr
\code{\link{gtkContainerChildGet}(object, child, ...)}\cr
\code{\link{gtkContainerChildSet}(object, child, ...)}\cr
\code{\link{gtkContainerChildGetProperty}(object, child, property.name)}\cr
\code{\link{gtkContainerChildSetProperty}(object, child, property.name, value)}\cr
\code{\link{gtkContainerForall}(object, callback, callback.data = NULL)}\cr
\code{\link{gtkContainerGetBorderWidth}(object)}\cr
\code{\link{gtkContainerSetBorderWidth}(object, border.width)}\cr
\code{\link{gtkContainerPropagateExpose}(object, child, event)}\cr
\code{\link{gtkContainerGetFocusChain}(object)}\cr
\code{\link{gtkContainerSetFocusChain}(object, focusable.widgets)}\cr
\code{\link{gtkContainerUnsetFocusChain}(object)}\cr
\code{\link{gtkContainerClassFindChildProperty}(cclass, property.name)}\cr
\code{\link{gtkContainerClassInstallChildProperty}(cclass, property.id, pspec)}\cr
\code{\link{gtkContainerClassListChildProperties}(cclass)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                           +----GtkBox
                           +----GtkCList
                           +----GtkFixed
                           +----GtkPaned
                           +----GtkIconView
                           +----GtkLayout
                           +----GtkList
                           +----GtkMenuShell
                           +----GtkNotebook
                           +----GtkSocket
                           +----GtkTable
                           +----GtkTextView
                           +----GtkToolbar
                           +----GtkToolItemGroup
                           +----GtkToolPalette
                           +----GtkTree
                           +----GtkTreeView}}
\section{Interfaces}{GtkContainer implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A GTK+ user interface is constructed by nesting widgets inside widgets.
Container widgets are the inner nodes in the resulting tree of widgets:
they contain other widgets. So, for example, you might have a \code{\link{GtkWindow}}
containing a \code{\link{GtkFrame}} containing a GtkLabel. If you wanted an image instead
of a textual label inside the frame, you might replace the \code{\link{GtkLabel}} widget
with a \code{\link{GtkImage}} widget.
  
There are two major kinds of container widgets in GTK+. Both are subclasses
of the abstract \code{\link{GtkContainer}} base class.
  
The first type of container widget has a single child widget and derives
from \code{\link{GtkBin}}. These containers are \dfn{decorators}, which
add some kind of functionality to the child. For example, a \code{\link{GtkButton}} makes
its child into a clickable button; a \code{\link{GtkFrame}} draws a frame around its child
and a \code{\link{GtkWindow}} places its child widget inside a top-level window.
  
The second type of container can have more than one child; its purpose is to
manage \dfn{layout}. This means that these containers assign
sizes and positions to their children. For example, a \code{\link{GtkHBox}} arranges its
children in a horizontal row, and a \code{\link{GtkTable}} arranges the widgets it contains
in a two-dimensional grid.
  
To fulfill its task, a layout container must negotiate the size requirements
with its parent and its children. This negotiation is carried out in two
phases, \dfn{size requisition} and \dfn{size
allocation}.}
\section{Size Requisition}{The size requisition of a widget is it's desired width and height.
This is represented by a \code{\link{GtkRequisition}}.
  
How a widget determines its desired size depends on the widget.
A \code{\link{GtkLabel}}, for example, requests enough space to display all its text.
Container widgets generally base their size request on the requisitions
of their children.
  
The size requisition phase of the widget layout process operates top-down.
It starts at a top-level widget, typically a \code{\link{GtkWindow}}. The top-level widget
asks its child for its size requisition by calling \code{\link{gtkWidgetSizeRequest}}.
To determine its requisition, the child asks its own children for their
requisitions and so on. Finally, the top-level widget will get a requisition
back from its child.}
\section{Size Allocation}{When the top-level widget has determined how much space its child would like
to have, the second phase of the size negotiation, size allocation, begins.
Depending on its configuration (see \code{\link{gtkWindowSetResizable}}), the top-level
widget may be able to expand in order to satisfy the size request or it may
have to ignore the size request and keep its fixed size. It then tells its
child widget how much space it gets by calling \code{\link{gtkWidgetSizeAllocate}}.
The child widget divides the space among its children and tells each child
how much space it got, and so on. Under normal circumstances, a \code{\link{GtkWindow}}
will always give its child the amount of space the child requested.
  
A child's size allocation is represented by a \code{\link{GtkAllocation}}. This struct
contains not only a width and height, but also a position (i.e. X and Y
coordinates), so that containers can tell their children not only how much
space they have gotten, but also where they are positioned inside the space
available to the container.
  
Widgets are required to honor the size allocation they receive; a size
request is only a request, and widgets must be able to cope with any size.}
\section{Child properties}{\code{GtkContainer} introduces \dfn{child
properties} - these are object properties that are not specific
to either the container or the contained widget, but rather to their relation.
Typical examples of child properties are the position or pack-type of a widget
which is contained in a \code{\link{GtkBox}}.  
Use \code{\link{gtkContainerClassInstallChildProperty}} to install child properties
for a container class and \code{\link{gtkContainerClassFindChildProperty}} or
\code{\link{gtkContainerClassListChildProperties}} to get information about existing
child properties.
  
To set the value of a child property, use \code{\link{gtkContainerChildSetProperty}},
\code{\link{gtkContainerChildSet}} or \code{gtkContainerChildSetValist()}.
To obtain the value of a child property, use
\code{\link{gtkContainerChildGetProperty}}, \code{\link{gtkContainerChildGet}} or
\code{gtkContainerChildGetValist()}. To emit notification about child property
changes, use \code{\link{gtkWidgetChildNotify}}.}
\section{GtkContainer as GtkBuildable}{The GtkContainer implementation of the GtkBuildable interface
supports a <packing> element for children, which can
contain multiple <property> elements that specify
child properties for the child.
  
 \emph{Child properties in UI definitions}\preformatted{<object class="GtkVBox">
  <child>
    <object class="GtkLabel"/>
    <packing>
      <property name="pack-type">start</property>
    </packing>
  </child>
</object>
}  
Since 2.16, child properties can also be marked as translatable using
the same "translatable", "comments" and "context" attributes that are used
for regular properties.}
\section{Structures}{\describe{\item{\verb{GtkContainer}}{
\emph{undocumented
}

\describe{
\item{\verb{focusChild}}{[\code{\link{GtkWidget}}] }
\item{\verb{borderWidth}}{[numeric] }
\item{\verb{needResize}}{[numeric] }
\item{\verb{resizeMode}}{[numeric] }
\item{\verb{reallocateRedraws}}{[numeric] }
\item{\verb{hasFocusChain}}{[numeric] }
}

}}}
\section{Signals}{\describe{
\item{\code{add(container, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{container}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{check-resize(container, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{container}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{remove(container, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{container}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{set-focus-child(container, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{container}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{border-width} [numeric : Read / Write]}{

The width of the empty border outside the containers children.  Allowed values: <= 65535  Default value: 0

}
\item{\verb{child} [\code{\link{GtkWidget}} : *            : Write]}{

Can be used to add a new child to the container.

}
\item{\verb{resize-mode} [\code{\link{GtkResizeMode}} : Read / Write]}{

Specify how resize events are handled.  Default value: GTK_RESIZE_PARENT

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkContainer.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

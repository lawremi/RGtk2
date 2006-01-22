\alias{gtk-Drag-and-Drop}
\alias{GtkDestDefaults}
\alias{GtkTargetFlags}
\name{gtk-Drag-and-Drop}
\title{Drag and Drop}
\description{Functions for controlling drag and drop handling}
\section{Methods and Functions}{
\link{gtkDragDestSet}(object, flags, targets, actions)
\link{gtkDragDestSetProxy}(object, proxy.window, protocol, use.coordinates)
\link{gtkDragDestUnset}(object)
\link{gtkDragDestFindTarget}(object, context, target.list)
\link{gtkDragDestGetTargetList}(object)
\link{gtkDragDestSetTargetList}(object, target.list)
\link{gtkDragDestAddTextTargets}(object)
\link{gtkDragDestAddImageTargets}(object)
\link{gtkDragDestAddUriTargets}(object)
\link{gtkDragFinish}(object, success, del, time = GDK_CURRENT_TIME)
\link{gtkDragGetData}(object, context, target, time = GDK_CURRENT_TIME)
\link{gtkDragGetSourceWidget}(context)
\link{gtkDragHighlight}(object)
\link{gtkDragUnhighlight}(object)
\link{gtkDragBegin}(object, targets, actions, button, event)
\link{gtkDragSetIconWidget}(object, widget, hot.x, hot.y)
\link{gtkDragSetIconPixmap}(object, colormap, pixmap, mask, hot.x, hot.y)
\link{gtkDragSetIconPixbuf}(object, pixbuf, hot.x, hot.y)
\link{gtkDragSetIconStock}(object, stock.id, hot.x, hot.y)
\link{gtkDragSetIconName}(object, icon.name, hot.x, hot.y)
\link{gtkDragSetIconDefault}(object)
\link{gtkDragSetDefaultIcon}(colormap, pixmap, mask, hot.x, hot.y)
\link{gtkDragCheckThreshold}(object, start.x, start.y, current.x, current.y)
\link{gtkDragSourceSet}(object, start.button.mask, targets, actions)
\link{gtkDragSourceSetIcon}(object, colormap, pixmap, mask = NULL)
\link{gtkDragSourceSetIconPixbuf}(object, pixbuf)
\link{gtkDragSourceSetIconStock}(object, stock.id)
\link{gtkDragSourceSetIconName}(widget, icon.name)
\link{gtkDragSourceUnset}(object)
\link{gtkDragSourceSetTargetList}(object, target.list)
\link{gtkDragSourceGetTargetList}(object)
\link{gtkDragSourceAddTextTargets}(object)
\link{gtkDragSourceAddImageTargets}(object)
\link{gtkDragSourceAddUriTargets}(object)
}
\section{Detailed Description}{GTK+ has a rich set of functions for doing inter-process
communication via the drag-and-drop metaphor. GTK+
can do drag-and-drop (DND) via multiple protocols.
The currently supported protocols are the Xdnd and
Motif protocols.

As well as the functions listed here, applications
may need to use some facilities provided for
Selections.
Also, the Drag and Drop API makes use of signals
in the \code{\link{GtkWidget}} class.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkDestDefaults}}{
The \code{\link{GtkDestDefaults}} enumeration specifies the various
types of action that will be taken on behalf
of the user for a drag destination site.

\describe{
\item{\code{GTK_DEST_DEFAULT_MOTION (motion)}}{   If set for a widget, GTK+, during a drag over this
   widget will check if the drag matches this widget's
   list of possible targets and actions.
   GTK+ will then call \code{\link{gdkDragStatus}} as appropriate.}
\item{\code{GTK_DEST_DEFAULT_HIGHLIGHT (highlight)}}{   If set for a widget, GTK+ will draw a highlight on
   this widget as long as a drag is over this widget
   and the widget drag format and action are acceptable.}
\item{\code{GTK_DEST_DEFAULT_DROP (drop)}}{   If set for a widget, when a drop occurs, GTK+ will
   will check if the drag matches this widget's
   list of possible targets and actions. If so, 
   GTK+ will call \code{\link{gtkDragGetData}} on behalf 
   of the widget. Whether or not the drop is successful,
   GTK+ will call \code{\link{gtkDragFinish}}. If the action
   was a move, then if the drag was successful, then
   \code{TRUE} will be passed for the \code{delete} parameter
   to \code{\link{gtkDragFinish}}.}
\item{\code{GTK_DEST_DEFAULT_ALL (all)}}{   If set, specifies that all default actions should
   be taken.}
}

}
\item{\code{enum GtkTargetFlags}}{
The \code{\link{GtkTargetFlags}} enumeration is used to specify
constraints on an entry in a \code{GtkTargetTable}. 

\describe{
\item{\code{GTK_TARGET_SAME_APP (app)}}{   If this is set, the target will only be selected
   for drags within a single application.}
\item{\code{GTK_TARGET_SAME_WIDGET (widget)}}{   If this is set, the target will only be selected
   for drags within a single widget.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Drag-and-Drop.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

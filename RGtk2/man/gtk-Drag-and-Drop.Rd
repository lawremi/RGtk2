\alias{gtk-Drag-and-Drop}
\alias{GtkDestDefaults}
\alias{GtkTargetFlags}
\name{gtk-Drag-and-Drop}
\title{Drag and Drop}
\description{Functions for controlling drag and drop handling}
\section{Methods and Functions}{
\code{\link{gtkDragDestSet}(object, flags, targets, actions)}\cr
\code{\link{gtkDragDestSetProxy}(object, proxy.window, protocol, use.coordinates)}\cr
\code{\link{gtkDragDestUnset}(object)}\cr
\code{\link{gtkDragDestFindTarget}(object, context, target.list)}\cr
\code{\link{gtkDragDestGetTargetList}(object)}\cr
\code{\link{gtkDragDestSetTargetList}(object, target.list)}\cr
\code{\link{gtkDragDestAddTextTargets}(object)}\cr
\code{\link{gtkDragDestAddImageTargets}(object)}\cr
\code{\link{gtkDragDestAddUriTargets}(object)}\cr
\code{\link{gtkDragDestSetTrackMotion}(object, track.motion)}\cr
\code{\link{gtkDragDestGetTrackMotion}(object)}\cr
\code{\link{gtkDragFinish}(object, success, del, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkDragGetData}(object, context, target, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkDragGetSourceWidget}(context)}\cr
\code{\link{gtkDragHighlight}(object)}\cr
\code{\link{gtkDragUnhighlight}(object)}\cr
\code{\link{gtkDragBegin}(object, targets, actions, button, event)}\cr
\code{\link{gtkDragSetIconWidget}(object, widget, hot.x, hot.y)}\cr
\code{\link{gtkDragSetIconPixmap}(object, colormap, pixmap, mask, hot.x, hot.y)}\cr
\code{\link{gtkDragSetIconPixbuf}(object, pixbuf, hot.x, hot.y)}\cr
\code{\link{gtkDragSetIconStock}(object, stock.id, hot.x, hot.y)}\cr
\code{\link{gtkDragSetIconName}(object, icon.name, hot.x, hot.y)}\cr
\code{\link{gtkDragSetIconDefault}(object)}\cr
\code{\link{gtkDragSetDefaultIcon}(colormap, pixmap, mask, hot.x, hot.y)}\cr
\code{\link{gtkDragCheckThreshold}(object, start.x, start.y, current.x, current.y)}\cr
\code{\link{gtkDragSourceSet}(object, start.button.mask, targets, actions)}\cr
\code{\link{gtkDragSourceSetIcon}(object, colormap, pixmap, mask = NULL)}\cr
\code{\link{gtkDragSourceSetIconPixbuf}(object, pixbuf)}\cr
\code{\link{gtkDragSourceSetIconStock}(object, stock.id)}\cr
\code{\link{gtkDragSourceSetIconName}(widget, icon.name)}\cr
\code{\link{gtkDragSourceUnset}(object)}\cr
\code{\link{gtkDragSourceSetTargetList}(object, target.list)}\cr
\code{\link{gtkDragSourceGetTargetList}(object)}\cr
\code{\link{gtkDragSourceAddTextTargets}(object)}\cr
\code{\link{gtkDragSourceAddImageTargets}(object)}\cr
\code{\link{gtkDragSourceAddUriTargets}(object)}\cr
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
\item{\verb{GtkDestDefaults}}{
The \code{\link{GtkDestDefaults}} enumeration specifies the various
types of action that will be taken on behalf
of the user for a drag destination site.

\describe{
\item{\verb{motion}}{   If set for a widget, GTK+, during a drag over this
   widget will check if the drag matches this widget's
   list of possible targets and actions.
   GTK+ will then call \code{\link{gdkDragStatus}} as appropriate.}
\item{\verb{highlight}}{   If set for a widget, GTK+ will draw a highlight on
   this widget as long as a drag is over this widget
   and the widget drag format and action are acceptable.}
\item{\verb{drop}}{   If set for a widget, when a drop occurs, GTK+ will
   will check if the drag matches this widget's
   list of possible targets and actions. If so,
   GTK+ will call \code{\link{gtkDragGetData}} on behalf
   of the widget. Whether or not the drop is successful,
   GTK+ will call \code{\link{gtkDragFinish}}. If the action
   was a move, then if the drag was successful, then
   \code{TRUE} will be passed for the \code{delete} parameter
   to \code{\link{gtkDragFinish}}.}
\item{\verb{all}}{   If set, specifies that all default actions should
   be taken.}
}

}
\item{\verb{GtkTargetFlags}}{
The \code{\link{GtkTargetFlags}} enumeration is used to specify
constraints on an entry in a \verb{GtkTargetTable}.

\describe{
\item{\verb{app}}{   If this is set, the target will only be selected
   for drags within a single application.}
\item{\verb{widget}}{   If this is set, the target will only be selected
   for drags within a single widget.}
}

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Drag-and-Drop.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

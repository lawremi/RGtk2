\alias{GtkHandleBox}
\alias{gtkHandleBox}
\name{GtkHandleBox}
\title{GtkHandleBox}
\description{a widget for detachable window portions}
\section{Methods and Functions}{
\code{\link{gtkHandleBoxNew}(show = TRUE)}\cr
\code{\link{gtkHandleBoxSetShadowType}(object, type)}\cr
\code{\link{gtkHandleBoxSetHandlePosition}(object, position)}\cr
\code{\link{gtkHandleBoxSetSnapEdge}(object, edge)}\cr
\code{\link{gtkHandleBoxGetHandlePosition}(object)}\cr
\code{\link{gtkHandleBoxGetShadowType}(object)}\cr
\code{\link{gtkHandleBoxGetSnapEdge}(object)}\cr
\code{\link{gtkHandleBoxGetChildDetached}(object)}\cr
\code{gtkHandleBox(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkHandleBox}}
\section{Interfaces}{GtkHandleBox implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkHandleBox}} widget allows a portion of a window to be "torn
off". It is a bin widget which displays its child and a handle that
the user can drag to tear off a separate window (the \dfn{float
window}) containing the child widget. A thin
\dfn{ghost} is drawn in the original location of the
handlebox. By dragging the separate window back to its original
location, it can be reattached.
  
When reattaching, the ghost and float window, must be aligned
along one of the edges, the \dfn{snap edge}.
This either can be specified by the application programmer
explicitely, or GTK+ will pick a reasonable default based
on the handle position.
  
To make detaching and reattaching the handlebox as minimally confusing
as possible to the user, it is important to set the snap edge so that
the snap edge does not move when the handlebox is deattached. For
instance, if the handlebox is packed at the bottom of a VBox, then
when the handlebox is detached, the bottom edge of the handlebox's
allocation will remain fixed as the height of the handlebox shrinks,
so the snap edge should be set to \code{GTK_POS_BOTTOM}.}
\section{Structures}{\describe{\item{\verb{GtkHandleBox}}{
The \code{\link{GtkHandleBox}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)
\tabular{ll}{
GtkShadowType shadow_type; \tab The shadow type for the entry. (See   \code{\link{gtkHandleBoxSetShadowType}}  ). \cr
GtkPositionType handle_position; \tab The position of the handlebox's handle with respect
to the child. (See   \code{\link{gtkHandleBoxSetHandlePosition}}  ) \cr
gint snap_edge; \tab A value of type   \verb{GtkPosition}   type indicating snap edge for the widget.
(See gtk_handle_box_set_snap_edge). The value of -1 indicates
that this value has not been set. \cr
\verb{logical}   child_detached; \tab A boolean value indicating whether the handlebox's
child is attached or detached. \cr
}

}}}
\section{Convenient Construction}{\code{gtkHandleBox} is the equivalent of \code{\link{gtkHandleBoxNew}}.}
\section{Signals}{\describe{
\item{\code{child-attached(handlebox, widget, user.data)}}{
This signal is emitted when the contents of the
handlebox are reattached to the main window.

\describe{
\item{\code{handlebox}}{the object which received the signal.}
\item{\code{widget}}{the child widget of the handlebox.
(this argument provides no extra information
and is here only for backwards-compatibility)}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{child-detached(handlebox, widget, user.data)}}{
This signal is emitted when the contents of the
handlebox are detached from the main window.

\describe{
\item{\code{handlebox}}{the object which received the signal.}
\item{\code{widget}}{the child widget of the handlebox.
(this argument provides no extra information
and is here only for backwards-compatibility)}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{child-detached} [logical : Read]}{

A boolean value indicating whether the handlebox's child is attached or detached.  Default value: FALSE

}
\item{\verb{handle-position} [\code{\link{GtkPositionType}} : Read / Write]}{

Position of the handle relative to the child widget.  Default value: GTK_POS_LEFT

}
\item{\verb{shadow} [\code{\link{GtkShadowType}} : Read / Write]}{

Deprecated property, use shadow_type instead.  Default value: GTK_SHADOW_OUT

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Appearance of the shadow that surrounds the container.  Default value: GTK_SHADOW_OUT

}
\item{\verb{snap-edge} [\code{\link{GtkPositionType}} : Read / Write]}{

Side of the handlebox that's lined up with the docking point to dock the handlebox.  Default value: GTK_POS_TOP

}
\item{\verb{snap-edge-set} [logical : Read / Write]}{

Whether to use the value from the snap_edge property or a value derived from handle_position.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkHandleBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

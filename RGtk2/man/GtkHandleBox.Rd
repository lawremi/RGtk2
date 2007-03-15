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
\code{gtkHandleBox(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----GtkHandleBox}}
\section{Interfaces}{GtkHandleBox implements
 AtkImplementorIface.}
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
\section{Structures}{\describe{\item{\code{GtkHandleBox}}{
The \code{\link{GtkHandleBox}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{
GtkShadowType shadow\_type; \tab The shadow type for the entry. (See   \code{\link{gtkHandleBoxSetShadowType}}  ). \cr
GtkPositionType handle\_position; \tab The position of the handlebox's handle with respect
to the child. (See   \code{\link{gtkHandleBoxSetHandlePosition}}  ) \cr
gint snap\_edge; \tab A value of type   \code{GtkPosition}   type indicating snap edge for the widget.
(See gtk\_handle\_box\_set\_snap\_edge). The value of -1 indicates
that this value has not been set. \cr
\code{logical}   child\_detached; \tab A boolean value indicating whether the handlebox's
child is attached or detached. \cr
}

}}}
\section{Convenient Construction}{\code{gtkHandleBox} is the equivalent of \code{\link{gtkHandleBoxNew}}.}
\section{Signals}{\describe{
\item{\code{child-attached(handlebox, widget, user.data)}}{
This signal is emitted when the contents of the
handlebox are reattached to the main window.

\describe{
\item{\code{handlebox}}{[\code{\link{GtkHandleBox}}] the object which received the signal.}
\item{\code{widget}}{[\code{\link{GtkWidget}}] the child widget of the handlebox.
         (this argument provides no extra information
          and is here only for backwards-compatibility)}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{child-detached(handlebox, widget, user.data)}}{
This signal is emitted when the contents of the
handlebox are detached from the main window.

\describe{
\item{\code{handlebox}}{[\code{\link{GtkHandleBox}}] the object which received the signal.}
\item{\code{widget}}{[\code{\link{GtkWidget}}] the child widget of the handlebox. 
         (this argument provides no extra information
          and is here only for backwards-compatibility)}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{handle-position} [\code{\link{GtkPositionType}} : Read / Write]}{

Position of the handle relative to the child widget.  Default value: GTK\_POS\_LEFT

}
\item{\code{shadow} [\code{\link{GtkShadowType}} : Read / Write]}{

Deprecated property, use shadow\_type instead.  Default value: GTK\_SHADOW\_ETCHED\_OUT

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Appearance of the shadow that surrounds the container.  Default value: GTK\_SHADOW\_ETCHED\_OUT

}
\item{\code{snap-edge} [\code{\link{GtkPositionType}} : Read / Write]}{

Side of the handlebox that's lined up with the docking point to dock the handlebox.  Default value: GTK\_POS\_TOP

}
\item{\code{snap-edge-set} [logical : Read / Write]}{

Whether to use the value from the snap\_edge property or a value derived from handle\_position.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHandleBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

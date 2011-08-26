\alias{gtkDragDestSet}
\name{gtkDragDestSet}
\title{gtkDragDestSet}
\description{Sets a widget as a potential drop destination, and adds default behaviors.}
\usage{gtkDragDestSet(object, flags, targets, actions)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{flags}}{which types of default drag behavior to use}
\item{\verb{targets}}{a pointer to a list of \code{\link{GtkTargetEntry}}s
indicating the drop types that this \code{widget} will accept, or \code{NULL}.
Later you can access the list with \code{\link{gtkDragDestGetTargetList}}
and \code{\link{gtkDragDestFindTarget}}. \emph{[  \acronym{allow-none}  ][  \acronym{array}   length=n_targets]}}
\item{\verb{actions}}{a bitmask of possible actions for a drop onto this \code{widget}.}
}
\details{The default behaviors listed in \code{flags} have an effect similar
to installing default handlers for the widget's drag-and-drop signals
(\verb{"drag-motion"}, \verb{"drag-drop"}, ...). They all exist
for convenience. When passing \verb{GTK_DEST_DEFAULT_ALL} for instance it is
sufficient to connect to the widget's \verb{"drag-data-received"}
signal to get primitive, but consistent drag-and-drop support.
  
Things become more complicated when you try to preview the dragged data,
as described in the documentation for \verb{"drag-motion"}. The default
behaviors described by \code{flags} make some assumptions, that can conflict
with your own signal handlers. For instance \verb{GTK_DEST_DEFAULT_DROP} causes
invokations of \code{\link{gdkDragStatus}} in the context of \verb{"drag-motion"},
and invokations of \code{\link{gtkDragFinish}} in \verb{"drag-data-received"}.
Especially the later is dramatic, when your own \verb{"drag-motion"}
handler calls \code{\link{gtkDragGetData}} to inspect the dragged data.
  
There's no way to set a default action here, you can use the
\verb{"drag-motion"} callback for that. Here's an example which selects
the action to use depending on whether the control key is pressed or not:
\preformatted{static void
drag_motion (GtkWidget *widget,
             GdkDragContext *context,
             gint x,
             gint y,
             guint time)
{
  GdkModifierType mask;

  gdk_window_get_pointer (gtk_widget_get_window (widget),
                          NULL, NULL, &mask);
  if (mask & GDK_CONTROL_MASK)
    gdk_drag_status (context, GDK_ACTION_COPY, time);
  else
    gdk_drag_status (context, GDK_ACTION_MOVE, time);
}
}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

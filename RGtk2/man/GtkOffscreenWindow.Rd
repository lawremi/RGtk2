\alias{GtkOffscreenWindow}
\alias{gtkOffscreenWindow}
\name{GtkOffscreenWindow}
\title{GtkOffscreenWindow}
\description{A toplevel container widget used to manage offscreen
   rendering of child widgets.}
\section{Methods and Functions}{
\code{\link{gtkOffscreenWindowNew}(show = TRUE)}\cr
\code{\link{gtkOffscreenWindowGetPixmap}(object)}\cr
\code{\link{gtkOffscreenWindowGetPixbuf}(object)}\cr
\code{gtkOffscreenWindow(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkOffscreenWindow}}
\section{Interfaces}{GtkOffscreenWindow implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkOffscreenWindow}} is strictly intended to be used for obtaining
snapshots of widgets that are not part of a normal widget hierarchy.
It differs from \code{\link{gtkWidgetGetSnapshot}} in that the widget you
want to get a snapshot of need not be displayed on the user's screen
as a part of a widget hierarchy.  However, since \code{\link{GtkOffscreenWindow}}
is a toplevel widget you cannot obtain snapshots of a full window
with it since you cannot pack a toplevel widget in another toplevel.
  
The idea is to take a widget and manually set the state of it,
add it to a \code{\link{GtkOffscreenWindow}} and then retrieve the snapshot
as a \code{\link{GdkPixmap}} or \code{\link{GdkPixbuf}}.
  \code{\link{GtkOffscreenWindow}} derives from \code{\link{GtkWindow}} only as an implementation
detail.  Applications should not use any API specific to \code{\link{GtkWindow}}
to operate on this object.  It should be treated as a \code{\link{GtkBin}} that
has no parent widget.
  
When contained offscreen widgets are redrawn, \code{\link{GtkOffscreenWindow}}
will emit a \verb{"damage-event"} signal.}
\section{Structures}{\describe{\item{\verb{GtkOffscreenWindow}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkOffscreenWindow} is the equivalent of \code{\link{gtkOffscreenWindowNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkOffscreenWindow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

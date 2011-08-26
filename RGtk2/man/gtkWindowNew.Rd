\alias{gtkWindowNew}
\name{gtkWindowNew}
\title{gtkWindowNew}
\description{Creates a new \code{\link{GtkWindow}}, which is a toplevel window that can
contain other widgets. Nearly always, the type of the window should
be \verb{GTK_WINDOW_TOPLEVEL}. If you're implementing something like a
popup menu from scratch (which is a bad idea, just use \code{\link{GtkMenu}}),
you might use \verb{GTK_WINDOW_POPUP}. \verb{GTK_WINDOW_POPUP} is not for
dialogs, though in some other toolkits dialogs are called "popups".
In GTK+, \verb{GTK_WINDOW_POPUP} means a pop-up menu or pop-up tooltip.
On X11, popup windows are not controlled by the window manager.}
\usage{gtkWindowNew(type = NULL, show = TRUE)}
\arguments{\item{\verb{type}}{type of window}}
\details{If you simply want an undecorated window (no window borders), use
\code{\link{gtkWindowSetDecorated}}, don't use \verb{GTK_WINDOW_POPUP}.}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkWindow}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

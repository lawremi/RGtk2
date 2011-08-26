\alias{gtkWindowSetPolicy}
\name{gtkWindowSetPolicy}
\title{gtkWindowSetPolicy}
\description{
Changes how a toplevel window deals with its size request and user resize
attempts. There are really only two reasonable ways to call this function:
\enumerate{
\item \code{gtk_window_set_policy (GTK_WINDOW (window), FALSE, TRUE, FALSE)}
means that the window is user-resizable.
\item \code{gtk_window_set_policy (GTK_WINDOW (window), FALSE, FALSE, TRUE)}
means that the window's size is program-controlled, and should simply match
the current size request of the window's children.
}
The first policy is the default, that is, by default windows are designed to
be resized by users.
\strong{WARNING: \code{gtk_window_set_policy} is deprecated and should not be used in newly-written code. Use \code{\link{gtkWindowSetResizable}} instead.}
}
\usage{gtkWindowSetPolicy(object, allow.shrink, allow.grow, auto.shrink)}
\arguments{
\item{\verb{object}}{the window}
\item{\verb{allow.shrink}}{whether the user can shrink the window below its size request}
\item{\verb{allow.grow}}{whether the user can grow the window larger than its size request}
\item{\verb{auto.shrink}}{whether the window automatically snaps back to its size request
if it's larger}
}
\details{The basic ugly truth of this function is that it should be simply:
\code{ void gtk_window_set_resizable (GtkWindow* window, gboolean setting);}
...which is why GTK+ 2.0 introduces \code{\link{gtkWindowSetResizable}}, which you
should use instead of \code{\link{gtkWindowSetPolicy}}.
  
If set to \code{TRUE}, the \code{allow.grow} parameter allows the user to expand the window
beyond the size request of its child widgets. If \code{allow.grow} is \code{TRUE}, be sure to
check that your child widgets work properly as the window is resized.
  
A toplevel window will always change size to ensure its child widgets receive
their requested size. This means that if you add child widgets, the toplevel
window will expand to contain them. However, normally the toplevel will not
shrink to fit the size request of its children if it's too large; the
\code{auto.shrink} parameter causes the window to shrink when child widgets have too
much space. \code{auto.shrink} is normally used with the second of the two window
policies mentioned above.  That is, set \code{auto.shrink} to \code{TRUE} if you want the
window to have a fixed, always-optimal size determined by your program.
  
Note that \code{auto.shrink} doesn't do anything if \code{allow.shrink} and \code{allow.grow} are
both set to \code{FALSE}.
  
Neither of the two suggested window policies set the \code{allow.shrink} parameter to
\code{TRUE}.  If \code{allow.shrink} is \code{TRUE}, the user can shrink the window so that its
children do not receive their full size request; this is basically a bad thing,
because most widgets will look wrong if this happens. Furthermore GTK+ has a
tendency to re-expand the window if size is recalculated for any reason. The
upshot is that \code{allow.shrink} should always be set to \code{FALSE}.
  
Sometimes when you think you want to use \code{allow.shrink}, the real problem is that
some specific child widget is requesting too much space, so the user can't
shrink the window sufficiently. Perhaps you are calling \code{\link{gtkWidgetSetSizeRequest}}
on a child widget, and forcing its size request to be too large. Instead of
setting the child's usize, consider using \code{\link{gtkWindowSetDefaultSize}} so that
the child gets a larger allocation than it requests.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

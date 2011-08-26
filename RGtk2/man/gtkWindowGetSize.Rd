\alias{gtkWindowGetSize}
\name{gtkWindowGetSize}
\title{gtkWindowGetSize}
\description{Obtains the current size of \code{window}. If \code{window} is not onscreen,
it returns the size GTK+ will suggest to the window manager for the initial window
size (but this is not reliably the same as the size the window
manager will actually select). The size obtained by
\code{\link{gtkWindowGetSize}} is the last size received in a
\code{\link{GdkEventConfigure}}, that is, GTK+ uses its locally-stored size,
rather than querying the X server for the size. As a result, if you
call \code{\link{gtkWindowResize}} then immediately call
\code{\link{gtkWindowGetSize}}, the size won't have taken effect yet. After
the window manager processes the resize request, GTK+ receives
notification that the size has changed via a configure event, and
the size of the window gets updated.}
\usage{gtkWindowGetSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{Note 1: Nearly any use of this function creates a race condition,
because the size of the window may change between the time that you
get the size and the time that you perform some action assuming
that size is the current size. To avoid race conditions, connect to
"configure-event" on the window and adjust your size-dependent
state to match the size delivered in the \code{\link{GdkEventConfigure}}.
  
Note 2: The returned size does \emph{not} include the
size of the window manager decorations (aka the window frame or
border). Those are not drawn by GTK+ and GTK+ has no reliable
method of determining their size.
  
Note 3: If you are getting a window size in order to position
the window onscreen, there may be a better way. The preferred
way is to simply set the window's semantic type with
\code{\link{gtkWindowSetTypeHint}}, which allows the window manager to
e.g. center dialogs. Also, if you set the transient parent of
dialogs with \code{\link{gtkWindowSetTransientFor}} window managers
will often center the dialog over its parent window. It's
much preferred to let the window manager handle these
things rather than doing it yourself, because all apps will
behave consistently and according to user prefs if the window
manager handles it. Also, the window manager can take the size
of the window decorations/border into account, while your
application cannot.
  
In any case, if you insist on application-specified window
positioning, there's \emph{still} a better way than
doing it yourself - \code{\link{gtkWindowSetPosition}} will frequently
handle the details for you.}
\value{
A list containing the following elements:
\item{\verb{width}}{(out): return location for width, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{height}}{(out): return location for height, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

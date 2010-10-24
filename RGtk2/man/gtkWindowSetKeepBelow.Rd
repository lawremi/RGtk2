\alias{gtkWindowSetKeepBelow}
\name{gtkWindowSetKeepBelow}
\title{gtkWindowSetKeepBelow}
\description{Asks to keep \code{window} below, so that it stays in bottom. Note that
you shouldn't assume the window is definitely below afterward,
because other entities (e.g. the user or window manager) could not keep it below,
and not all window managers support putting windows below. But
normally the window will be kept below. Just don't write code
that crashes if not.}
\usage{gtkWindowSetKeepBelow(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{setting}}{whether to keep \code{window} below other windows}
}
\details{It's permitted to call this function before showing a window,
in which case the window will be kept below when it appears onscreen
initially.
  
You can track the below state via the "window-state-event" signal
on \code{\link{GtkWidget}}.
  
Note that, according to the Extended Window 
Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}) specification, the above state is mainly meant 
for user preferences and should not be used by applications e.g. for 
drawing attention to their dialogs.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkWindowPresent}
\name{gtkWindowPresent}
\title{gtkWindowPresent}
\description{Presents a window to the user. This may mean raising the window
in the stacking order, deiconifying it, moving it to the current
desktop, and/or giving it the keyboard focus, possibly dependent
on the user's platform, window manager, and preferences.}
\usage{gtkWindowPresent(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{If \code{window} is hidden, this function calls \code{\link{gtkWidgetShow}}
as well.
  
This function should be used when the user tries to open a window
that's already open. Say for example the preferences dialog is
currently open, and the user chooses Preferences from the menu
a second time; use \code{\link{gtkWindowPresent}} to move the already-open dialog
where the user can see it.
  
If you are calling this function in response to a user interaction,
it is preferable to use \code{\link{gtkWindowPresentWithTime}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

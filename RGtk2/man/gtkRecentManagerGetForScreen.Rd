\alias{gtkRecentManagerGetForScreen}
\name{gtkRecentManagerGetForScreen}
\title{gtkRecentManagerGetForScreen}
\description{
Gets the recent manager object associated with \code{screen}; if this
function has not previously been called for the given screen,
a new recent manager object will be created and associated with
the screen. Recent manager objects are fairly expensive to create,
so using this function is usually a better choice than calling 
\code{\link{gtkRecentManagerNew}} and setting the screen yourself; by using
this function a single recent manager object will be shared between
users.
\strong{WARNING: \code{gtk_recent_manager_get_for_screen} has been deprecated since version 2.12 and should not be used in newly-written code. This function has been deprecated and should
  not be used in newly written code. Calling this function is
  equivalent to calling \code{\link{gtkRecentManagerGetDefault}}.}
}
\usage{gtkRecentManagerGetForScreen(screen)}
\arguments{\item{\verb{screen}}{a \code{\link{GdkScreen}}}}
\details{Since 2.10}
\value{[\code{\link{GtkRecentManager}}] A unique \code{\link{GtkRecentManager}} associated with the given
screen. This recent manager is associated to the with the screen
and can be used as long as the screen is open. Do not ref or
unref it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

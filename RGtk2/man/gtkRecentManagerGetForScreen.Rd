\alias{gtkRecentManagerGetForScreen}
\name{gtkRecentManagerGetForScreen}
\title{gtkRecentManagerGetForScreen}
\description{Gets the recent manager object associated with \code{screen}; if this
function has not previously been called for the given screen,
a new recent manager object will be created and associated with
the screen. Recent manager objects are fairly expensive to create,
so using this function is usually a better choice than calling 
\code{\link{gtkRecentManagerNew}} and setting the screen yourself; by using
this function a single recent manager object will be shared between
users.}
\usage{gtkRecentManagerGetForScreen(screen)}
\arguments{\item{\code{screen}}{[\code{\link{GdkScreen}}]  a \code{\link{GdkScreen}}}}
\details{  Since  2.10}
\value{[\code{\link{GtkRecentManager}}]  A unique \code{\link{GtkRecentManager}} associated with the given
  screen. This recent manager is associated to the with the screen
  and can be used as long as the screen is open. Do not ref or
  unref it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

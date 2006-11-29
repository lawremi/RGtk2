\alias{gtkRecentManagerGetDefault}
\name{gtkRecentManagerGetDefault}
\title{gtkRecentManagerGetDefault}
\description{Gets the recent manager for the default screen. See
\code{\link{gtkRecentManagerGetForScreen}}.}
\usage{gtkRecentManagerGetDefault()}
\details{  Since  2.10}
\value{[\code{\link{GtkRecentManager}}]  A unique \code{\link{GtkRecentManager}} associated with the
  default screen. This recent manager is associated to the
  screen and can be used as long as the screen is open.
  Do no ref or unref it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

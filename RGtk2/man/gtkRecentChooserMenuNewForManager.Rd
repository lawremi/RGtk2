\alias{gtkRecentChooserMenuNewForManager}
\name{gtkRecentChooserMenuNewForManager}
\title{gtkRecentChooserMenuNewForManager}
\description{Creates a new \code{\link{GtkRecentChooserMenu}} widget using \code{manager} as
the underlying recently used resources manager.}
\usage{gtkRecentChooserMenuNewForManager(manager = NULL, show = TRUE)}
\arguments{\item{\verb{manager}}{a \code{\link{GtkRecentManager}}}}
\details{This is useful if you have implemented your own recent manager,
or if you have a customized instance of a \code{\link{GtkRecentManager}}
object or if you wish to share a common \code{\link{GtkRecentManager}} object
among multiple \code{\link{GtkRecentChooser}} widgets.
  Since 2.10}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkRecentChooserMenu}}, bound to \code{manager}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

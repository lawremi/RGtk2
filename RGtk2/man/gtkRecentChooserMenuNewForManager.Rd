\alias{gtkRecentChooserMenuNewForManager}
\name{gtkRecentChooserMenuNewForManager}
\title{gtkRecentChooserMenuNewForManager}
\description{Creates a new \verb{\link{GtkRecentChooserMenu}} widget using \code{manager} as
the underlying recently used resources manager.}
\usage{gtkRecentChooserMenuNewForManager(manager = NULL, show = TRUE)}
\arguments{\item{\verb{manager}}{[\verb{\link{GtkRecentManager}}]  a \verb{\link{GtkRecentManager}}}}
\details{This is useful if you have implemented your own recent manager,
or if you have a customized instance of a \verb{\link{GtkRecentManager}}
object or if you wish to share a common \verb{\link{GtkRecentManager}} object
among multiple \verb{\link{GtkRecentChooser}} widgets.  

  Since  2.10}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkRecentChooserMenu}}, bound to \code{manager}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

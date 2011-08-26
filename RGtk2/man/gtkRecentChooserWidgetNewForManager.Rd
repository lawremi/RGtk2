\alias{gtkRecentChooserWidgetNewForManager}
\name{gtkRecentChooserWidgetNewForManager}
\title{gtkRecentChooserWidgetNewForManager}
\description{Creates a new \code{\link{GtkRecentChooserWidget}} with a specified recent manager.}
\usage{gtkRecentChooserWidgetNewForManager(manager = NULL, show = TRUE)}
\arguments{\item{\verb{manager}}{a \code{\link{GtkRecentManager}}}}
\details{This is useful if you have implemented your own recent manager, or if you
have a customized instance of a \code{\link{GtkRecentManager}} object.
  Since 2.10}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkRecentChooserWidget}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

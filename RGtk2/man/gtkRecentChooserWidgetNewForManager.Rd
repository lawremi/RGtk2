\alias{gtkRecentChooserWidgetNewForManager}
\name{gtkRecentChooserWidgetNewForManager}
\title{gtkRecentChooserWidgetNewForManager}
\description{Creates a new \verb{\link{GtkRecentChooserWidget}} with a specified recent manager.}
\usage{gtkRecentChooserWidgetNewForManager(manager = NULL, show = TRUE)}
\arguments{\item{\verb{manager}}{[\verb{\link{GtkRecentManager}}]  a \verb{\link{GtkRecentManager}}}}
\details{This is useful if you have implemented your own recent manager, or if you
have a customized instance of a \verb{\link{GtkRecentManager}} object.  

  Since  2.10}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkRecentChooserWidget}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

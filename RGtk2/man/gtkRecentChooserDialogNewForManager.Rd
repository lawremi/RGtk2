\alias{gtkRecentChooserDialogNewForManager}
\name{gtkRecentChooserDialogNewForManager}
\title{gtkRecentChooserDialogNewForManager}
\description{Creates a new \code{\link{GtkRecentChooserDialog}} with a specified recent manager.}
\usage{gtkRecentChooserDialogNewForManager(title = NULL, parent = NULL, manager, ..., show = TRUE)}
\arguments{\item{\code{...}}{[\code{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL},}}
\details{This is useful if you have implemented your own recent manager, or if you
have a customized instance of a \code{\link{GtkRecentManager}} object.  

  Since  2.10}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkRecentChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

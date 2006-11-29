\alias{gtkRecentChooserDialogNewForManager}
\name{gtkRecentChooserDialogNewForManager}
\title{gtkRecentChooserDialogNewForManager}
\description{Creates a new \code{\link{GtkRecentChooserDialog}} with a specified recent manager.}
\usage{gtkRecentChooserDialogNewForManager(title = NULL, parent = NULL, manager, ..., show = TRUE)}
\arguments{
\item{\code{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\code{parent}}{[\code{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL},}
\item{\code{manager}}{[\code{\link{GtkRecentManager}}]  a \code{\link{GtkRecentManager}}}
\item{\code{...}}{ response ID for the first button, then additional (button, id)
  pairs, ending with \code{NULL}}
}
\details{This is useful if you have implemented your own recent manager, or if you
have a customized instance of a \code{\link{GtkRecentManager}} object.  

  Since  2.10}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkRecentChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

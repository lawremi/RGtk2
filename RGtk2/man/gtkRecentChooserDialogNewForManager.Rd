\alias{gtkRecentChooserDialogNewForManager}
\name{gtkRecentChooserDialogNewForManager}
\title{gtkRecentChooserDialogNewForManager}
\description{Creates a new \verb{\link{GtkRecentChooserDialog}} with a specified recent manager.}
\usage{gtkRecentChooserDialogNewForManager(title = NULL, parent = NULL, manager, ..., show = TRUE)}
\arguments{
\item{\verb{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\verb{parent}}{[\verb{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL},}
\item{\verb{manager}}{[\verb{\link{GtkRecentManager}}]  a \verb{\link{GtkRecentManager}}}
\item{\verb{...}}{ response ID for the first button, then additional (button, id)
  pairs, ending with \code{NULL}}
}
\details{This is useful if you have implemented your own recent manager, or if you
have a customized instance of a \verb{\link{GtkRecentManager}} object.  

  Since  2.10}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkRecentChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

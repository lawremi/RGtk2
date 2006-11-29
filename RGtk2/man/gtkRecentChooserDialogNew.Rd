\alias{gtkRecentChooserDialogNew}
\name{gtkRecentChooserDialogNew}
\title{gtkRecentChooserDialogNew}
\description{Creates a new \code{\link{GtkRecentChooserDialog}}.  This function is analogous to
\code{\link{gtkDialogNewWithButtons}}.}
\usage{gtkRecentChooserDialogNew(title = NULL, parent = NULL, ..., show = TRUE)}
\arguments{
\item{\code{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\code{parent}}{[\code{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL},}
\item{\code{...}}{ response ID for the first button, then additional (button, id)
  pairs, ending with \code{NULL}}
}
\details{  Since  2.10}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkRecentChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkRecentChooserDialogNew}
\name{gtkRecentChooserDialogNew}
\title{gtkRecentChooserDialogNew}
\description{Creates a new \verb{\link{GtkRecentChooserDialog}}.  This function is analogous to
\code{\link{gtkDialogNewWithButtons}}.}
\usage{gtkRecentChooserDialogNew(title = NULL, parent = NULL, ..., show = TRUE)}
\arguments{
\item{\verb{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\verb{parent}}{[\verb{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL},}
\item{\verb{...}}{ response ID for the first button, then additional (button, id)
  pairs, ending with \code{NULL}}
}
\details{  Since  2.10}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkRecentChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkFileChooserDialogNew}
\name{gtkFileChooserDialogNew}
\title{gtkFileChooserDialogNew}
\description{Creates a new \verb{\link{GtkFileChooserDialog}}.  This function is analogous to
\code{\link{gtkDialogNewWithButtons}}.}
\usage{gtkFileChooserDialogNew(title = NULL, parent = NULL, action, ..., show = TRUE)}
\arguments{
\item{\verb{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\verb{parent}}{[\verb{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL}}
\item{\verb{action}}{[\code{\link{GtkFileChooserAction}}]  Open or save mode for the dialog}
\item{\verb{...}}{ response ID for the first button, then additional (button, id) pairs, ending with \code{NULL}}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkFileChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

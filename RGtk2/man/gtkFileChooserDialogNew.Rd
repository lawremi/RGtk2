\alias{gtkFileChooserDialogNew}
\name{gtkFileChooserDialogNew}
\title{gtkFileChooserDialogNew}
\description{Creates a new \code{\link{GtkFileChooserDialog}}.  This function is analogous to
\code{\link{gtkDialogNewWithButtons}}.}
\usage{gtkFileChooserDialogNew(title = NULL, parent = NULL, action, ..., show = TRUE)}
\arguments{
\item{\code{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\code{parent}}{[\code{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL}}
\item{\code{action}}{[\code{\link{GtkFileChooserAction}}]  Open or save mode for the dialog}
\item{\code{...}}{ response ID for the first button, then additional (button, id) pairs, ending with \code{NULL}}
}
\details{  Since  2.4}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkFileChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

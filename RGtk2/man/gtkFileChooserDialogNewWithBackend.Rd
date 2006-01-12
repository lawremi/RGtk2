\alias{gtkFileChooserDialogNewWithBackend}
\name{gtkFileChooserDialogNewWithBackend}
\title{gtkFileChooserDialogNewWithBackend}
\description{Creates a new \code{\link{GtkFileChooserDialog}} with a specified backend. This is
especially useful if you use \code{\link{gtkFileChooserSetLocalOnly}} to allow
non-local files and you use a more expressive vfs, such as gnome-vfs,
to load files.}
\usage{gtkFileChooserDialogNewWithBackend(title = NULL, parent = NULL, action, backend, ..., show = TRUE)}
\arguments{
\item{\code{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\code{parent}}{[\code{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL}}
\item{\code{action}}{[\code{\link{GtkFileChooserAction}}]  Open or save mode for the dialog}
\item{\code{backend}}{[character]  The name of the specific filesystem backend to use.}
\item{\code{...}}{ response ID for the first button, then additional (button, id) pairs, ending with \code{NULL}}
}
\details{  Since  2.4}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkFileChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkFileChooserDialogNewWithBackend}
\name{gtkFileChooserDialogNewWithBackend}
\title{gtkFileChooserDialogNewWithBackend}
\description{Creates a new \verb{\link{GtkFileChooserDialog}} with a specified backend. This is
especially useful if you use \code{\link{gtkFileChooserSetLocalOnly}} to allow
non-local files and you use a more expressive vfs, such as gnome-vfs,
to load files.}
\usage{gtkFileChooserDialogNewWithBackend(title = NULL, parent = NULL, action, backend, ..., show = TRUE)}
\arguments{
\item{\verb{title}}{[character]  Title of the dialog, or \code{NULL}}
\item{\verb{parent}}{[\verb{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL}}
\item{\verb{action}}{[\code{\link{GtkFileChooserAction}}]  Open or save mode for the dialog}
\item{\verb{backend}}{[character]  The name of the specific filesystem backend to use.}
\item{\verb{...}}{ response ID for the first button, then additional (button, id) pairs, ending with \code{NULL}}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkFileChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

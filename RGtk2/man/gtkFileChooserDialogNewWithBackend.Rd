\alias{gtkFileChooserDialogNewWithBackend}
\name{gtkFileChooserDialogNewWithBackend}
\title{gtkFileChooserDialogNewWithBackend}
\description{Creates a new \code{\link{GtkFileChooserDialog}} with a specified backend. This is
especially useful if you use \code{\link{gtkFileChooserSetLocalOnly}} to allow
non-local files and you use a more expressive vfs, such as gnome-vfs,
to load files.}
\usage{gtkFileChooserDialogNewWithBackend(title = NULL, parent = NULL, action, backend, ..., show = TRUE)}
\arguments{\item{\code{...}}{[\code{\link{GtkWindow}}]  Transient parent of the dialog, or \code{NULL}}}
\details{  Since  2.4}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkFileChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

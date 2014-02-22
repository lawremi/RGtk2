\alias{gtkFileChooserDialogNewWithBackend}
\name{gtkFileChooserDialogNewWithBackend}
\title{gtkFileChooserDialogNewWithBackend}
\description{
Creates a new \code{\link{GtkFileChooserDialog}} with a specified backend. This is
especially useful if you use \code{\link{gtkFileChooserSetLocalOnly}} to allow
non-local files and you use a more expressive vfs, such as gnome-vfs,
to load files.
\strong{WARNING: \code{gtk_file_chooser_dialog_new_with_backend} has been deprecated since version 2.14 and should not be used in newly-written code. Use \code{\link{gtkFileChooserDialogNew}} instead.}
}
\usage{gtkFileChooserDialogNewWithBackend(title = NULL, parent = NULL, 
    action, backend, ..., show = TRUE)}
\arguments{
\item{\verb{title}}{Title of the dialog, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{parent}}{Transient parent of the dialog, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{action}}{Open or save mode for the dialog}
\item{\verb{backend}}{The name of the specific filesystem backend to use.}
\item{\verb{...}}{a new \code{\link{GtkFileChooserDialog}}}
}
\details{Since 2.4}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkFileChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

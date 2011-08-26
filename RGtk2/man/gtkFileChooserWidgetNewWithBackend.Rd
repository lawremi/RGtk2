\alias{gtkFileChooserWidgetNewWithBackend}
\name{gtkFileChooserWidgetNewWithBackend}
\title{gtkFileChooserWidgetNewWithBackend}
\description{
Creates a new \code{\link{GtkFileChooserWidget}} with a specified backend.  This is
especially useful if you use \code{\link{gtkFileChooserSetLocalOnly}} to allow
non-local files.  This is a file chooser widget that can be embedded in
custom windows and it is the same widget that is used by
\code{\link{GtkFileChooserDialog}}.
\strong{WARNING: \code{gtk_file_chooser_widget_new_with_backend} has been deprecated since version 2.14 and should not be used in newly-written code. Use \code{\link{gtkFileChooserWidgetNew}} instead.}
}
\usage{gtkFileChooserWidgetNewWithBackend(action, backend, show = TRUE)}
\arguments{
\item{\verb{action}}{Open or save mode for the widget}
\item{\verb{backend}}{The name of the specific filesystem backend to use.}
}
\details{Since 2.4}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkFileChooserWidget}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

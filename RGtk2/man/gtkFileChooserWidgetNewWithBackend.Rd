\alias{gtkFileChooserWidgetNewWithBackend}
\name{gtkFileChooserWidgetNewWithBackend}
\title{gtkFileChooserWidgetNewWithBackend}
\description{Creates a new \code{\link{GtkFileChooserWidget}} with a specified backend.  This is
especially useful if you use \code{\link{gtkFileChooserSetLocalOnly}} to allow
non-local files.  This is a file chooser widget that can be embedded in
custom windows and it is the same widget that is used by
\code{\link{GtkFileChooserDialog}}.}
\usage{gtkFileChooserWidgetNewWithBackend(action, backend, show = TRUE)}
\arguments{
\item{\code{action}}{[\code{\link{GtkFileChooserAction}}]  Open or save mode for the widget}
\item{\code{backend}}{[character]  The name of the specific filesystem backend to use.}
}
\details{  Since  2.4}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkFileChooserWidget}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

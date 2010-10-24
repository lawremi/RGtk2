\alias{gtkFileChooserSetPreviewWidgetActive}
\name{gtkFileChooserSetPreviewWidgetActive}
\title{gtkFileChooserSetPreviewWidgetActive}
\description{Sets whether the preview widget set by
\code{\link{gtkFileChooserSetPreviewWidget}} should be shown for the
current filename. When \code{active} is set to false, the file chooser
may display an internally generated preview of the current file
or it may display no preview at all. See
\code{\link{gtkFileChooserSetPreviewWidget}} for more details.}
\usage{gtkFileChooserSetPreviewWidgetActive(object, active)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{active}}{whether to display the user-specified preview widget}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

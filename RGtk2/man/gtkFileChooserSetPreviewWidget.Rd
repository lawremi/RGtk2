\alias{gtkFileChooserSetPreviewWidget}
\name{gtkFileChooserSetPreviewWidget}
\title{gtkFileChooserSetPreviewWidget}
\description{Sets an application-supplied widget to use to display a custom preview
of the currently selected file. To implement a preview, after setting the
preview widget, you connect to the \verb{"update-preview"}
signal, and call \code{\link{gtkFileChooserGetPreviewFilename}} or
\code{\link{gtkFileChooserGetPreviewUri}} on each change. If you can
display a preview of the new file, update your widget and
set the preview active using \code{\link{gtkFileChooserSetPreviewWidgetActive}}.
Otherwise, set the preview inactive.}
\usage{gtkFileChooserSetPreviewWidget(object, preview.widget)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{preview.widget}}{widget for displaying preview.}
}
\details{When there is no application-supplied preview widget, or the
application-supplied preview widget is not active, the file chooser
may display an internally generated preview of the current file or
it may display no preview at all.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

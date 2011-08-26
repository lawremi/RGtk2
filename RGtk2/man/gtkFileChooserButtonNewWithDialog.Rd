\alias{gtkFileChooserButtonNewWithDialog}
\name{gtkFileChooserButtonNewWithDialog}
\title{gtkFileChooserButtonNewWithDialog}
\description{Creates a \code{\link{GtkFileChooserButton}} widget which uses \code{dialog} as its
file-picking window.}
\usage{gtkFileChooserButtonNewWithDialog(dialog)}
\arguments{\item{\verb{dialog}}{the widget to use as dialog}}
\details{Note that \code{dialog} must be a \code{\link{GtkDialog}} (or subclass) which
implements the \code{\link{GtkFileChooser}} interface and must not have
\code{GTK_DIALOG_DESTROY_WITH_PARENT} set.
  
Also note that the dialog needs to have its confirmative button
added with response \code{GTK_RESPONSE_ACCEPT} or \code{GTK_RESPONSE_OK} in
order for the button to take over the file selected in the dialog.
  Since 2.6}
\value{[\code{\link{GtkWidget}}] a new button widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

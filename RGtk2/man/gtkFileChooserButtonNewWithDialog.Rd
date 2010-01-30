\alias{gtkFileChooserButtonNewWithDialog}
\name{gtkFileChooserButtonNewWithDialog}
\title{gtkFileChooserButtonNewWithDialog}
\description{Creates a \verb{\link{GtkFileChooserButton}} widget which uses \code{dialog} as its
file-picking window.}
\usage{gtkFileChooserButtonNewWithDialog(dialog)}
\arguments{\item{\verb{dialog}}{[\verb{\link{GtkWidget}}]  the widget to use as dialog}}
\details{Note that \code{dialog} must be a \verb{\link{GtkDialog}} (or subclass) which
implements the \verb{\link{GtkFileChooser}} interface and must not have
\code{GTK_DIALOG_DESTROY_WITH_PARENT} set.
  
Also note that the dialog needs to have its confirmative button
added with response \code{GTK_RESPONSE_ACCEPT} or \code{GTK_RESPONSE_OK} in
order for the button to take over the file selected in the dialog.  

  Since  2.6}
\value{[\verb{\link{GtkWidget}}]  a new button widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

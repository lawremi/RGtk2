\alias{gtkFileChooserSetDoOverwriteConfirmation}
\name{gtkFileChooserSetDoOverwriteConfirmation}
\title{gtkFileChooserSetDoOverwriteConfirmation}
\description{Sets whether a file chooser in \code{GTK_FILE_CHOOSER_ACTION_SAVE} mode will present
a confirmation dialog if the user types a file name that already exists.  This
is \code{FALSE} by default.}
\usage{gtkFileChooserSetDoOverwriteConfirmation(object, do.overwrite.confirmation)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{do.overwrite.confirmation}}{whether to confirm overwriting in save mode}
}
\details{Regardless of this setting, the \code{chooser} will emit the
\verb{"confirm-overwrite"} signal when appropriate.
  
If all you need is the stock confirmation dialog, set this property to \code{TRUE}.
You can override the way confirmation is done by actually handling the
\verb{"confirm-overwrite"} signal; please refer to its documentation
for the details.
  Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

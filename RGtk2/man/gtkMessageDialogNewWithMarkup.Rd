\alias{gtkMessageDialogNewWithMarkup}
\name{gtkMessageDialogNewWithMarkup}
\title{gtkMessageDialogNewWithMarkup}
\description{Creates a new message dialog, which is a simple dialog with an icon
indicating the dialog type (error, warning, etc.) and some text which
is marked up with the Pango text markup language.
When the user clicks a button a "response" signal is emitted with
response IDs from \code{\link{GtkResponseType}}. See \code{\link{GtkDialog}} for more details.}
\usage{gtkMessageDialogNewWithMarkup(parent, flags, type, buttons, ..., show = TRUE)}
\arguments{
\item{\code{parent}}{[\code{\link{GtkWindow}}]  transient parent, or \code{NULL} for none }
\item{\code{flags}}{[\code{\link{GtkDialogFlags}}]  flags}
\item{\code{type}}{[\code{\link{GtkMessageType}}]  type of message}
\item{\code{buttons}}{[\code{\link{GtkButtonsType}}]  set of buttons to use}
\item{\code{...}}{ arguments for \code{message.format}}
}
\details{Special XML characters in the \code{printf()} arguments passed to this
function will automatically be escaped as necessary.
(See \code{gMarkupPrintfEscaped()} for how this is implemented.)
Usually this is what you want, but if you have an existing
Pango markup string that you want to use literally as the
label, then you need to use \code{\link{gtkMessageDialogSetMarkup}}
instead, since you can't pass the markup string either
as the format (it might contain '%' characters) or as a string
argument.
  
\preformatted{
dialog <- gtkMessageDialog(main_application_window, "destroy-with-parent",
                                  "error", "close")
dialog$setMarkup(message)
}  

  Since  2.4}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkMessageDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkMessageDialogNew}
\name{gtkMessageDialogNew}
\title{gtkMessageDialogNew}
\description{Creates a new message dialog, which is a simple dialog with an icon
indicating the dialog type (error, warning, etc.) and some text the
user may want to see. When the user clicks a button a "response"
signal is emitted with response IDs from \code{\link{GtkResponseType}}. See
\verb{\link{GtkDialog}} for more details.}
\usage{gtkMessageDialogNew(parent = NULL, flags, type, buttons, ..., show = TRUE)}
\arguments{
\item{\verb{parent}}{[\verb{\link{GtkWindow}}]  transient parent, or \code{NULL} for none }
\item{\verb{flags}}{[\code{\link{GtkDialogFlags}}]  flags}
\item{\verb{type}}{[\code{\link{GtkMessageType}}]  type of message}
\item{\verb{buttons}}{[\code{\link{GtkButtonsType}}]  set of buttons to use}
\item{\verb{...}}{ arguments for \code{message.format}}
}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkMessageDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

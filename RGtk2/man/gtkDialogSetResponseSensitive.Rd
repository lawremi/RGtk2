\alias{gtkDialogSetResponseSensitive}
\name{gtkDialogSetResponseSensitive}
\title{gtkDialogSetResponseSensitive}
\description{Calls \code{gtk_widget_set_sensitive (widget, } 
for each widget in the dialog's action area with the given \code{response.id}.
A convenient way to sensitize/desensitize dialog buttons.}
\usage{gtkDialogSetResponseSensitive(object, response.id, setting)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkDialog}}]  a \verb{\link{GtkDialog}}}
\item{\verb{response.id}}{[integer]  a response ID}
\item{\verb{setting}}{[logical] \code{TRUE} for sensitive}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

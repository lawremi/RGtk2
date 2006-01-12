\alias{gtkDialogSetResponseSensitive}
\name{gtkDialogSetResponseSensitive}
\title{gtkDialogSetResponseSensitive}
\description{Calls \code{gtk_widget_set_sensitive (widget, } 
for each widget in the dialog's action area with the given \code{response.id}.
A convenient way to sensitize/desensitize dialog buttons.}
\usage{gtkDialogSetResponseSensitive(object, response.id, setting)}
\arguments{
\item{\code{object}}{[\code{\link{GtkDialog}}]  a \code{\link{GtkDialog}}}
\item{\code{response.id}}{[integer]  a response ID}
\item{\code{setting}}{[logical]  \code{TRUE} for sensitive}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

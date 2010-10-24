\alias{gtkDialogSetResponseSensitive}
\name{gtkDialogSetResponseSensitive}
\title{gtkDialogSetResponseSensitive}
\description{Calls \code{gtk_widget_set_sensitive (widget,   setting  )} 
for each widget in the dialog's action area with the given \code{response.id}.
A convenient way to sensitize/desensitize dialog buttons.}
\usage{gtkDialogSetResponseSensitive(object, response.id, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkDialog}}}
\item{\verb{response.id}}{a response ID}
\item{\verb{setting}}{\code{TRUE} for sensitive}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

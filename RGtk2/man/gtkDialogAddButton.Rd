\alias{gtkDialogAddButton}
\name{gtkDialogAddButton}
\title{gtkDialogAddButton}
\description{Adds a button with the given text (or a stock button, if \code{button.text} is a
stock ID) and sets things up so that clicking the button will emit the
\code{\link{gtkDialogResponse}} signal with the given \code{response.id}. The button is 
appended to the end of the dialog's action area. The button widget is 
returned, but usually you don't need it.}
\usage{gtkDialogAddButton(object, button.text, response.id)}
\arguments{
\item{\code{object}}{[\code{\link{GtkDialog}}]  a \code{\link{GtkDialog}}}
\item{\code{button.text}}{[character]  text of button, or stock ID}
\item{\code{response.id}}{[integer]  response ID for the button}
}
\value{[\code{\link{GtkWidget}}]  the button widget that was added}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkInfoBarAddButton}
\name{gtkInfoBarAddButton}
\title{gtkInfoBarAddButton}
\description{Adds a button with the given text (or a stock button, if button_text
is a stock ID) and sets things up so that clicking the button will emit
the "response" signal with the given response_id. The button is appended
to the end of the info bars's action area. The button widget is
returned, but usually you don't need it.}
\usage{gtkInfoBarAddButton(object, button.text, response.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkInfoBar}}}
\item{\verb{button.text}}{text of button, or stock ID}
\item{\verb{response.id}}{response ID for the button}
}
\details{Since 2.18}
\value{[\code{\link{GtkWidget}}] the button widget that was added}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

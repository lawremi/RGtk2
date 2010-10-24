\alias{gtkInfoBarSetResponseSensitive}
\name{gtkInfoBarSetResponseSensitive}
\title{gtkInfoBarSetResponseSensitive}
\description{Calls gtk_widget_set_sensitive (widget, setting) for each
widget in the info bars's action area with the given response_id.
A convenient way to sensitize/desensitize dialog buttons.}
\usage{gtkInfoBarSetResponseSensitive(object, response.id, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkInfoBar}}}
\item{\verb{response.id}}{a response ID}
\item{\verb{setting}}{TRUE for sensitive}
}
\details{Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

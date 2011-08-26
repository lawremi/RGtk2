\alias{gtkDialogGetWidgetForResponse}
\name{gtkDialogGetWidgetForResponse}
\title{gtkDialogGetWidgetForResponse}
\description{Gets the widget button that uses the given response ID in the action area
of a dialog.}
\usage{gtkDialogGetWidgetForResponse(object, response.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkDialog}}}
\item{\verb{response.id}}{the response ID used by the \code{dialog} widget}
}
\details{Since 2.20}
\value{[\code{\link{GtkWidget}}] the \code{widget} button that uses the given \code{response.id}, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

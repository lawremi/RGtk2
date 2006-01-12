\alias{gtkDialogGetResponseForWidget}
\name{gtkDialogGetResponseForWidget}
\title{gtkDialogGetResponseForWidget}
\description{Gets the response id of a widget in the action area
of a dialog.}
\usage{gtkDialogGetResponseForWidget(object, widget)}
\arguments{
\item{\code{object}}{[\code{\link{GtkDialog}}]  a \code{\link{GtkDialog}}}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  a widget in the action area of \code{dialog}}
}
\details{  Since  2.8}
\value{[integer]  the response id of \code{widget}, or \code{GTK_RESPONSE_NONE}
 if \code{widget} doesn't have a response id set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

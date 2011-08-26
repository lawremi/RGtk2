\alias{gtkDialogResponse}
\name{gtkDialogResponse}
\title{gtkDialogResponse}
\description{Emits the \code{\link{gtkDialogResponse}} signal with the given response ID. 
Used to indicate that the user has responded to the dialog in some way;
typically either you or \code{\link{gtkDialogRun}} will be monitoring the
::response signal and take appropriate action.}
\usage{gtkDialogResponse(object, response.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkDialog}}}
\item{\verb{response.id}}{response ID}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

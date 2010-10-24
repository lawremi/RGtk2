\alias{gtkInfoBarSetDefaultResponse}
\name{gtkInfoBarSetDefaultResponse}
\title{gtkInfoBarSetDefaultResponse}
\description{Sets the last widget in the info bar's action area with
the given response_id as the default widget for the dialog.
Pressing "Enter" normally activates the default widget.}
\usage{gtkInfoBarSetDefaultResponse(object, response.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkInfoBar}}}
\item{\verb{response.id}}{a response ID}
}
\details{Note that this function currently requires \code{info.bar} to
be added to a widget hierarchy.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

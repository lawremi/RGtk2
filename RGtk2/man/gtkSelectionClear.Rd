\alias{gtkSelectionClear}
\name{gtkSelectionClear}
\title{gtkSelectionClear}
\description{
The default handler for the GtkWidget::selection_clear_event
signal.
\strong{WARNING: \code{gtk_selection_clear} is deprecated and should not be used in newly-written code. Instead of calling this function, chain up from
your selection_clear_event handler. Calling this function
from any other context is illegal.}
}
\usage{gtkSelectionClear(object, event)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{event}}{[\code{\link{GdkEventSelection}}]  the event}
}
\details{  Since  2.2}
\value{[logical]  \code{TRUE} if the event was handled, otherwise false}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

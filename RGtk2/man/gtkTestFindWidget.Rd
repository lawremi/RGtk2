\alias{gtkTestFindWidget}
\name{gtkTestFindWidget}
\title{gtkTestFindWidget}
\description{This function will search the descendants of \code{widget} for a widget
of type \code{widget.type} that has a label matching \code{label.pattern} next
to it. This is most useful for automated GUI testing, e.g. to find
the "OK" button in a dialog and synthesize clicks on it.
However see \code{\link{gtkTestFindLabel}}, \code{\link{gtkTestFindSibling}} and
\code{\link{gtkTestWidgetClick}} for possible caveats involving the search of
such widgets and synthesizing widget events.}
\usage{gtkTestFindWidget(widget, label.pattern, widget.type)}
\arguments{
\item{\verb{widget}}{Container widget, usually a GtkWindow.}
\item{\verb{label.pattern}}{Shell-glob pattern to match a label string.}
\item{\verb{widget.type}}{Type of a aearched for label sibling widget.}
}
\details{Since 2.14}
\value{[\code{\link{GtkWidget}}] a valid widget if any is found or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

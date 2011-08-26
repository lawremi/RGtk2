\alias{gtkTestFindSibling}
\name{gtkTestFindSibling}
\title{gtkTestFindSibling}
\description{This function will search siblings of \code{base.widget} and siblings of its
ancestors for all widgets matching \code{widget.type}.
Of the matching widgets, the one that is geometrically closest to
\code{base.widget} will be returned.
The general purpose of this function is to find the most likely "action"
widget, relative to another labeling widget. Such as finding a
button or text entry widget, given it's corresponding label widget.}
\usage{gtkTestFindSibling(base.widget, widget.type)}
\arguments{
\item{\verb{base.widget}}{Valid widget, part of a widget hierarchy}
\item{\verb{widget.type}}{Type of a aearched for sibling widget}
}
\details{Since 2.14}
\value{[\code{\link{GtkWidget}}] a widget of type \code{widget.type} if any is found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

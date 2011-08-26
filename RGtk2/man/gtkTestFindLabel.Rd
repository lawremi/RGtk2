\alias{gtkTestFindLabel}
\name{gtkTestFindLabel}
\title{gtkTestFindLabel}
\description{This function will search \code{widget} and all its descendants for a GtkLabel
widget with a text string matching \code{label.pattern}.
The \code{label.pattern} may contain asterisks '*' and question marks '?' as
placeholders, \code{gPatternMatch()} is used for the matching.
Note that locales other than "C" tend to alter (translate" label strings,
so this function is genrally only useful in test programs with
predetermined locales, see \code{gtkTestInit()} for more details.}
\usage{gtkTestFindLabel(widget, label.pattern)}
\arguments{
\item{\verb{widget}}{Valid label or container widget.}
\item{\verb{label.pattern}}{Shell-glob pattern to match a label string.}
}
\details{Since 2.14}
\value{[\code{\link{GtkWidget}}] a GtkLabel widget if any is found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

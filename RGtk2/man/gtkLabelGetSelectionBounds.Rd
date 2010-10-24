\alias{gtkLabelGetSelectionBounds}
\name{gtkLabelGetSelectionBounds}
\title{gtkLabelGetSelectionBounds}
\description{Gets the selected range of characters in the label, returning \code{TRUE}
if there's a selection.}
\usage{gtkLabelGetSelectionBounds(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLabel}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if selection is non-empty}
\item{\verb{start}}{return location for start of selection, as a character offset}
\item{\verb{end}}{return location for end of selection, as a character offset}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

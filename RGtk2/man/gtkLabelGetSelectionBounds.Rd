\alias{gtkLabelGetSelectionBounds}
\name{gtkLabelGetSelectionBounds}
\title{gtkLabelGetSelectionBounds}
\description{Gets the selected range of characters in the label, returning \code{TRUE}
if there's a selection.}
\usage{gtkLabelGetSelectionBounds(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkLabel}}]  a \code{\link{GtkLabel}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if selection is non-empty}
\item{\code{start}}{[integer]  return location for start of selection, as a character offset}
\item{\code{end}}{[integer]  return location for end of selection, as a character offset}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

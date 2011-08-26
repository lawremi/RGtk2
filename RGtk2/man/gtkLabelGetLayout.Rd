\alias{gtkLabelGetLayout}
\name{gtkLabelGetLayout}
\title{gtkLabelGetLayout}
\description{Gets the \code{\link{PangoLayout}} used to display the label.
The layout is useful to e.g. convert text positions to
pixel positions, in combination with \code{\link{gtkLabelGetLayoutOffsets}}.}
\usage{gtkLabelGetLayout(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLabel}}}}
\value{[\code{\link{PangoLayout}}] the \code{\link{PangoLayout}} for this label. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

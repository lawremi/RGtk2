\alias{gtkColorSelectionSetChangePaletteWithScreenHook}
\name{gtkColorSelectionSetChangePaletteWithScreenHook}
\title{gtkColorSelectionSetChangePaletteWithScreenHook}
\description{Installs a global function to be called whenever the user tries to
modify the palette in a color selection. This function should save
the new palette contents, and update the GtkSettings property
"gtk-color-palette" so all GtkColorSelection widgets will be modified.}
\usage{gtkColorSelectionSetChangePaletteWithScreenHook(func)}
\arguments{\item{\verb{func}}{a function to call when the custom palette needs saving.}}
\details{Since 2.2}
\value{[\code{\link{GtkColorSelectionChangePaletteWithScreenFunc}}] the previous change palette hook (that was replaced).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

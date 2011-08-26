\alias{gtkColorSelectionSetChangePaletteHook}
\name{gtkColorSelectionSetChangePaletteHook}
\title{gtkColorSelectionSetChangePaletteHook}
\description{
Installs a global function to be called whenever the user tries to
modify the palette in a color selection. This function should save
the new palette contents, and update the GtkSettings property
"gtk-color-palette" so all GtkColorSelection widgets will be modified.
\strong{WARNING: \code{gtk_color_selection_set_change_palette_hook} has been deprecated since version 2.4 and should not be used in newly-written code. This function does not work in multihead environments.
    Use \code{\link{gtkColorSelectionSetChangePaletteWithScreenHook}} instead.}
}
\usage{gtkColorSelectionSetChangePaletteHook(func)}
\arguments{\item{\verb{func}}{a function to call when the custom palette needs saving.}}
\value{[\code{\link{GtkColorSelectionChangePaletteFunc}}] the previous change palette hook (that was replaced).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

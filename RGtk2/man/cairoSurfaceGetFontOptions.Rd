\alias{cairoSurfaceGetFontOptions}
\name{cairoSurfaceGetFontOptions}
\title{cairoSurfaceGetFontOptions}
\description{Retrieves the default font rendering options for the surface.
This allows display surfaces to report the correct subpixel order
for rendering on them, print surfaces to disable hinting of
metrics and so forth. The result can then be used with
\code{\link{cairoScaledFontCreate}}.}
\usage{cairoSurfaceGetFontOptions(surface)}
\arguments{\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  a \code{\link{cairo_surface_t}}}}
\value{
A list containing the following elements:
\item{\code{options}}{[\code{\link{cairo_font_options_t}}]  a \code{\link{cairo_font_options_t}} object into which to store
  the retrieved options. All existing values are overwritten}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

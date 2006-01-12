\alias{cairoGetFontOptions}
\name{cairoGetFontOptions}
\title{cairoGetFontOptions}
\description{Retrieves font rendering options set via \code{\link{cairoSetFontOptions}}.
Note that the returned options do not include any options derived
from the underlying surface; they are literally the options
passed to \code{\link{cairoSetFontOptions}}.}
\usage{cairoGetFontOptions(cr)}
\arguments{\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}}
\value{
A list containing the following elements:
\item{\code{options}}{[\code{\link{cairo_font_options_t}}]  a \code{\link{cairo_font_options_t}} object into which to store
  the retrieved options. All existing values are overwritten}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{cairoFontOptionsMerge}
\name{cairoFontOptionsMerge}
\title{cairoFontOptionsMerge}
\description{Merges non-default options from \code{other} into \code{options}, replacing
existing values. This operation can be thought of as somewhat
similar to compositing \code{other} onto \code{options} with the operation
of \code{CAIRO_OPERATION_OVER}.}
\usage{cairoFontOptionsMerge(options, other)}
\arguments{
\item{\code{options}}{[\code{\link{cairo_font_options_t}}]  a \code{\link{cairo_font_options_t}}}
\item{\code{other}}{[\code{\link{cairo_font_options_t}}]  another \code{\link{cairo_font_options_t}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

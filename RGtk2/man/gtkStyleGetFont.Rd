\alias{gtkStyleGetFont}
\name{gtkStyleGetFont}
\title{gtkStyleGetFont}
\description{
Gets the \code{\link{GdkFont}} to use for the given style. This is
meant only as a replacement for direct access to \code{style->font}
and should not be used in new code. New code should
use \code{style->font.desc} instead.
\strong{WARNING: \code{gtk_style_get_font} is deprecated and should not be used in newly-written code.}
}
\usage{gtkStyleGetFont(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkStyle}}}}
\value{[\code{\link{GdkFont}}] the \code{\link{GdkFont}} for the style. This font is owned
by the style; if you want to keep around a copy,}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

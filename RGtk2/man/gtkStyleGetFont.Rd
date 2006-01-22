\alias{gtkStyleGetFont}
\name{gtkStyleGetFont}
\title{gtkStyleGetFont}
\description{
Gets the \code{\link{GdkFont}} to use for the given style. This is
meant only as a replacement for direct access to \code{style->font}
and should not be used in new code. New code should
use \code{style->font.desc} instead.
\strong{WARNING: \code{gtk_style_get_font} is deprecated and should not be used in newly-written code.  
Gets the \code{\link{GdkFont}} to use for the given style. This is
meant only as a replacement for direct access to \code{style->font}
and should not be used in new code. New code should
use \code{style->font.desc} instead.  }
}
\usage{gtkStyleGetFont(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}}
\value{[\code{\link{GdkFont}}]  the \code{\link{GdkFont}} for the style.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

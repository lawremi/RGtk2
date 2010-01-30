\alias{gtkStyleSetFont}
\name{gtkStyleSetFont}
\title{gtkStyleSetFont}
\description{
Sets the \verb{\link{GdkFont}} to use for a given style. This is
meant only as a replacement for direct access to style->font
and should not be used in new code. New code should
use style->font_desc instead.
\strong{WARNING: \code{gtk_style_set_font} is deprecated and should not be used in newly-written code.}
}
\usage{gtkStyleSetFont(object, font)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}.}
\item{\verb{font}}{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}, or \code{NULL} to use the \verb{\link{GdkFont}} corresponding
  to style->font_desc.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

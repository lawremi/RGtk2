\alias{gtkWidgetModifyFont}
\name{gtkWidgetModifyFont}
\title{gtkWidgetModifyFont}
\description{Sets the font to use for a widget.  All other style values are left
untouched. See also \code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetModifyFont(object, font.desc = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{font.desc}}{[\code{\link{PangoFontDescription}}]  the font description to use, or \code{NULL} to undo
  the effect of previous calls to \code{\link{gtkWidgetModifyFont}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

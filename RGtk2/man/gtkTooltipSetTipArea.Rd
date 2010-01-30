\alias{gtkTooltipSetTipArea}
\name{gtkTooltipSetTipArea}
\title{gtkTooltipSetTipArea}
\description{Sets the area of the widget, where the contents of this tooltip apply,
to be \code{rect} (in widget coordinates).  This is especially useful for
properly setting tooltips on \verb{\link{GtkTreeView}} rows and cells, \verb{GtkIconViews},
etc.}
\usage{gtkTooltipSetTipArea(object, area)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTooltip}}]  a \verb{\link{GtkTooltip}}}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  a \verb{\link{GdkRectangle}}}
}
\details{For setting tooltips on \verb{\link{GtkTreeView}}, please refer to the convenience
functions for this: \code{\link{gtkTreeViewSetTooltipRow}} and
\code{\link{gtkTreeViewSetTooltipCell}}.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

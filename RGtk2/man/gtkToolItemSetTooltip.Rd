\alias{gtkToolItemSetTooltip}
\name{gtkToolItemSetTooltip}
\title{gtkToolItemSetTooltip}
\description{
Sets the \verb{\link{GtkTooltips}} object to be used for \code{tool.item}, the
text to be displayed as tooltip on the item and the private text
to be used. See \code{\link{gtkTooltipsSetTip}}.
\strong{WARNING: \code{gtk_tool_item_set_tooltip} has been deprecated since version 2.12 and should not be used in newly-written code. Use \code{\link{gtkToolItemSetTooltipText}} instead.}
}
\usage{gtkToolItemSetTooltip(object, tooltips, tip.text = NULL, tip.private = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolItem}}]  a \code{\link{gtkToolItem}} }
\item{\verb{tooltips}}{[\verb{\link{GtkTooltips}}]  The \verb{\link{GtkTooltips}} object to be used}
\item{\verb{tip.text}}{[character]  text to be used as tooltip text for \code{tool.item}}
\item{\verb{tip.private}}{[character]  text to be used as private tooltip text}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

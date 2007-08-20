\alias{gtkMenuToolButtonSetArrowTooltip}
\name{gtkMenuToolButtonSetArrowTooltip}
\title{gtkMenuToolButtonSetArrowTooltip}
\description{
Sets the \code{\link{GtkTooltips}} object to be used for arrow button which
pops up the menu. See \code{\link{gtkToolItemSetTooltip}} for setting
a tooltip on the whole \code{\link{GtkMenuToolButton}}.
\strong{WARNING: \code{gtk_menu_tool_button_set_arrow_tooltip} has been deprecated since version 2.12 and should not be used in newly-written code. Use \code{\link{gtkMenuToolButtonSetArrowTooltipText}}
instead.}
}
\usage{gtkMenuToolButtonSetArrowTooltip(object, tooltips, tip.text = NULL, tip.private = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkMenuToolButton}}]  a \code{\link{GtkMenuToolButton}}}
\item{\code{tooltips}}{[\code{\link{GtkTooltips}}]  the \code{\link{GtkTooltips}} object to be used}
\item{\code{tip.text}}{[character]  text to be used as tooltip text for tool\_item}
\item{\code{tip.private}}{[character]  text to be used as private tooltip text}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

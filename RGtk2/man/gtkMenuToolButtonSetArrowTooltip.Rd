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
\usage{gtkMenuToolButtonSetArrowTooltip(object, tooltips, tip.text = NULL, 
    tip.private = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenuToolButton}}}
\item{\verb{tooltips}}{the \code{\link{GtkTooltips}} object to be used}
\item{\verb{tip.text}}{text to be used as tooltip text for tool_item. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tip.private}}{text to be used as private tooltip text. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

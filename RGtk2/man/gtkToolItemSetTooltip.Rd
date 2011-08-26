\alias{gtkToolItemSetTooltip}
\name{gtkToolItemSetTooltip}
\title{gtkToolItemSetTooltip}
\description{
Sets the \code{\link{GtkTooltips}} object to be used for \code{tool.item}, the
text to be displayed as tooltip on the item and the private text
to be used. See \code{\link{gtkTooltipsSetTip}}.
\strong{WARNING: \code{gtk_tool_item_set_tooltip} has been deprecated since version 2.12 and should not be used in newly-written code. Use \code{\link{gtkToolItemSetTooltipText}} instead.}
}
\usage{gtkToolItemSetTooltip(object, tooltips, tip.text = NULL, tip.private = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolItem}}}
\item{\verb{tooltips}}{The \code{\link{GtkTooltips}} object to be used}
\item{\verb{tip.text}}{text to be used as tooltip text for \code{tool.item}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tip.private}}{text to be used as private tooltip text. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

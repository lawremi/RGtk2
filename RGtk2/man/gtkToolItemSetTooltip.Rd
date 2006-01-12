\alias{gtkToolItemSetTooltip}
\name{gtkToolItemSetTooltip}
\title{gtkToolItemSetTooltip}
\description{Sets the \code{\link{GtkTooltips}} object to be used for \code{tool.item}, the
text to be displayed as tooltip on the item and the private text
to be used. See \code{\link{gtkTooltipsSetTip}}.}
\usage{gtkToolItemSetTooltip(object, tooltips, tip.text = NULL, tip.private = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolItem}}]  a \code{\link{GtkToolItem}}: }
\item{\code{tooltips}}{[\code{\link{GtkTooltips}}]  The \code{\link{GtkTooltips}} object to be used}
\item{\code{tip.text}}{[character]  text to be used as tooltip text for \code{tool.item}}
\item{\code{tip.private}}{[character]  text to be used as private tooltip text}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

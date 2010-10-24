\alias{gtkWidgetSetTooltipText}
\name{gtkWidgetSetTooltipText}
\title{gtkWidgetSetTooltipText}
\description{Sets \code{text} as the contents of the tooltip. This function will take
care of setting GtkWidget:has-tooltip to \code{TRUE} and of the default
handler for the GtkWidget::query-tooltip signal.}
\usage{gtkWidgetSetTooltipText(object, text)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{text}}{the contents of the tooltip for \code{widget}}
}
\details{See also the GtkWidget:tooltip-text property and \code{\link{gtkTooltipSetText}}.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

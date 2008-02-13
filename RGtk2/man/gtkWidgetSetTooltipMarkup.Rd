\alias{gtkWidgetSetTooltipMarkup}
\name{gtkWidgetSetTooltipMarkup}
\title{gtkWidgetSetTooltipMarkup}
\description{Sets \code{markup} as the contents of the tooltip, which is marked up with
 the Pango text markup language.}
\usage{gtkWidgetSetTooltipMarkup(object, markup)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{markup}}{[character]  the contents of the tooltip for \code{widget}, or \code{NULL}}
}
\details{This function will take care of setting GtkWidget:has-tooltip to \code{TRUE}
and of the default handler for the GtkWidget::query-tooltip signal.
  
See also the GtkWidget:tooltip-markup property and
\code{\link{gtkTooltipsetMarkup}}.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

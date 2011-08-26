\alias{gtkWidgetSetTooltipMarkup}
\name{gtkWidgetSetTooltipMarkup}
\title{gtkWidgetSetTooltipMarkup}
\description{Sets \code{markup} as the contents of the tooltip, which is marked up with
 the Pango text markup language.}
\usage{gtkWidgetSetTooltipMarkup(object, markup)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{markup}}{the contents of the tooltip for \code{widget}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{This function will take care of setting GtkWidget:has-tooltip to \code{TRUE}
and of the default handler for the GtkWidget::query-tooltip signal.
  
See also the GtkWidget:tooltip-markup property and
\code{\link{gtkTooltipSetMarkup}}.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

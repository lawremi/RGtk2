\alias{gtkEntrySetIconTooltipMarkup}
\name{gtkEntrySetIconTooltipMarkup}
\title{gtkEntrySetIconTooltipMarkup}
\description{Sets \code{tooltip} as the contents of the tooltip for the icon at
the specified position. \code{tooltip} is assumed to be marked up with
the Pango text markup language.}
\usage{gtkEntrySetIconTooltipMarkup(object, icon.pos, tooltip = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{the icon position}
\item{\verb{tooltip}}{the contents of the tooltip for the icon, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Use \code{NULL} for \code{tooltip} to remove an existing tooltip.
  
See also \code{\link{gtkWidgetSetTooltipMarkup}} and 
\code{gtkEntySetIconTooltipText()}.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

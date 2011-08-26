\alias{gtkEntrySetIconTooltipText}
\name{gtkEntrySetIconTooltipText}
\title{gtkEntrySetIconTooltipText}
\description{Sets \code{tooltip} as the contents of the tooltip for the icon
at the specified position.}
\usage{gtkEntrySetIconTooltipText(object, icon.pos, tooltip = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{the icon position}
\item{\verb{tooltip}}{the contents of the tooltip for the icon, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Use \code{NULL} for \code{tooltip} to remove an existing tooltip.
  
See also \code{\link{gtkWidgetSetTooltipText}} and 
\code{\link{gtkEntrySetIconTooltipMarkup}}.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

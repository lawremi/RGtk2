\alias{gtkStatusIconSetTooltipMarkup}
\name{gtkStatusIconSetTooltipMarkup}
\title{gtkStatusIconSetTooltipMarkup}
\description{Sets \code{markup} as the contents of the tooltip, which is marked up with
 the Pango text markup language.}
\usage{gtkStatusIconSetTooltipMarkup(object, markup = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}
\item{\verb{markup}}{the contents of the tooltip for \code{status.icon}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{This function will take care of setting \verb{"has-tooltip"} to \code{TRUE}
and of the default handler for the \verb{"query-tooltip"} signal.
  
See also the \verb{"tooltip-markup"} property and
\code{\link{gtkTooltipSetMarkup}}.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

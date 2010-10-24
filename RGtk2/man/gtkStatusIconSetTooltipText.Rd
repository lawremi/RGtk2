\alias{gtkStatusIconSetTooltipText}
\name{gtkStatusIconSetTooltipText}
\title{gtkStatusIconSetTooltipText}
\description{Sets \code{text} as the contents of the tooltip.}
\usage{gtkStatusIconSetTooltipText(object, text)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}
\item{\verb{text}}{the contents of the tooltip for \code{status.icon}}
}
\details{This function will take care of setting \verb{"has-tooltip"} to
\code{TRUE} and of the default handler for the \verb{"query-tooltip"}
signal.
  
See also the \verb{"tooltip-text"} property and
\code{\link{gtkTooltipSetText}}.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

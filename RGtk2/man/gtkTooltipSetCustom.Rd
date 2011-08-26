\alias{gtkTooltipSetCustom}
\name{gtkTooltipSetCustom}
\title{gtkTooltipSetCustom}
\description{Replaces the widget packed into the tooltip with
\code{custom.widget}. \code{custom.widget} does not get destroyed when the tooltip goes
away.
By default a box with a \code{\link{GtkImage}} and \code{\link{GtkLabel}} is embedded in 
the tooltip, which can be configured using \code{\link{gtkTooltipSetMarkup}} 
and \code{\link{gtkTooltipSetIcon}}.}
\usage{gtkTooltipSetCustom(object, custom.widget)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTooltip}}}
\item{\verb{custom.widget}}{a \code{\link{GtkWidget}}, or \code{NULL} to unset the old custom widget. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkTooltipsetCustom}
\name{gtkTooltipsetCustom}
\title{gtkTooltipsetCustom}
\description{Replaces the widget packed into the tooltip with \code{custom.widget}.  
By default a box with a \code{\link{GtkImage}} and \code{\link{GtkLabel}} is embedded in 
the tooltip, which can be configured using \code{\link{gtkTooltipsetMarkup}} 
and \code{\link{gtkTooltipsetIcon}}.}
\usage{gtkTooltipsetCustom(object, custom.widget)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTooltip}}]  a \code{\link{GtkTooltip}}}
\item{\code{custom.widget}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

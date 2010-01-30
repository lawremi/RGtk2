\alias{gtkTooltipSetCustom}
\name{gtkTooltipSetCustom}
\title{gtkTooltipSetCustom}
\description{Replaces the widget packed into the tooltip with \code{custom.widget}.  
By default a box with a \verb{\link{GtkImage}} and \verb{\link{GtkLabel}} is embedded in 
the tooltip, which can be configured using \code{\link{gtkTooltipSetMarkup}} 
and \code{\link{gtkTooltipSetIcon}}.}
\usage{gtkTooltipSetCustom(object, custom.widget)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTooltip}}]  a \verb{\link{GtkTooltip}}}
\item{\verb{custom.widget}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkTooltipSetIconFromGicon}
\name{gtkTooltipSetIconFromGicon}
\title{gtkTooltipSetIconFromGicon}
\description{Sets the icon of the tooltip (which is in front of the text)
to be the icon indicated by \code{gicon} with the size indicated
by \code{size}. If \code{gicon} is \code{NULL}, the image will be hidden.}
\usage{gtkTooltipSetIconFromGicon(object, gicon, size)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTooltip}}}
\item{\verb{gicon}}{a \code{\link{GIcon}} representing the icon, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{type}   int]}}
}
\details{Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

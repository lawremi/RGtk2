\alias{gtkTooltipSetIconFromIconName}
\name{gtkTooltipSetIconFromIconName}
\title{gtkTooltipSetIconFromIconName}
\description{Sets the icon of the tooltip (which is in front of the text) to be
the icon indicated by \code{icon.name} with the size indicated
by \code{size}.  If \code{icon.name} is \code{NULL}, the image will be hidden.}
\usage{gtkTooltipSetIconFromIconName(object, icon.name = NULL, size)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTooltip}}}
\item{\verb{icon.name}}{an icon name, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{type}   int]}}
}
\details{Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

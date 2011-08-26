\alias{gtkScaleButtonNew}
\name{gtkScaleButtonNew}
\title{gtkScaleButtonNew}
\description{Creates a \code{\link{GtkScaleButton}}, with a range between \code{min} and \code{max}, with
a stepping of \code{step}.}
\usage{gtkScaleButtonNew(size, min, max, step, icons, show = TRUE)}
\arguments{
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{in}  ]}}
\item{\verb{min}}{the minimum value of the scale (usually 0)}
\item{\verb{max}}{the maximum value of the scale (usually 100)}
\item{\verb{step}}{the stepping of value when a scroll-wheel event,
or up/down arrow event occurs (usually 2)}
\item{\verb{icons}}{a list of icon names, or \code{NULL} if
you want to set the list later with \code{\link{gtkScaleButtonSetIcons}}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.12}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkScaleButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

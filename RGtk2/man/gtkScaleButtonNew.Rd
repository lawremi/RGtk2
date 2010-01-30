\alias{gtkScaleButtonNew}
\name{gtkScaleButtonNew}
\title{gtkScaleButtonNew}
\description{Creates a \verb{\link{GtkScaleButton}}, with a range between \code{min} and \code{max}, with
a stepping of \code{step}.}
\usage{gtkScaleButtonNew(size, min, max, step, icons, show = TRUE)}
\arguments{
\item{\verb{size}}{[\code{\link{GtkIconSize}}]  a stock icon size}
\item{\verb{min}}{[numeric]  the minimum value of the scale (usually 0)}
\item{\verb{max}}{[numeric]  the maximum value of the scale (usually 100)}
\item{\verb{step}}{[numeric]  the stepping of value when a scroll-wheel event,
       or up/down arrow event occurs (usually 2)}
\item{\verb{icons}}{[character]  a list of icon names, or \code{NULL} if
        you want to set the list later with \code{\link{gtkScaleButtonSetIcons}}}
}
\details{  Since  2.12}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkScaleButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

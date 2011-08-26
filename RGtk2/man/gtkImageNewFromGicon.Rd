\alias{gtkImageNewFromGicon}
\name{gtkImageNewFromGicon}
\title{gtkImageNewFromGicon}
\description{Creates a \code{\link{GtkImage}} displaying an icon from the current icon theme.
If the icon name isn't known, a "broken image" icon will be
displayed instead.  If the current icon theme is changed, the icon
will be updated appropriately.}
\usage{gtkImageNewFromGicon(icon, size, show = TRUE)}
\arguments{
\item{\verb{icon}}{an icon}
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{type}   int]}}
}
\details{Since 2.14}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkImage}} displaying the themed icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

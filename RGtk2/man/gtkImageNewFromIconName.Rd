\alias{gtkImageNewFromIconName}
\name{gtkImageNewFromIconName}
\title{gtkImageNewFromIconName}
\description{Creates a \code{\link{GtkImage}} displaying an icon from the current icon theme.
If the icon name isn't known, a "broken image" icon will be
displayed instead.  If the current icon theme is changed, the icon
will be updated appropriately.}
\usage{gtkImageNewFromIconName(icon.name, size)}
\arguments{
\item{\verb{icon.name}}{an icon name}
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{type}   int]}}
}
\details{Since 2.6}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkImage}} displaying the themed icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

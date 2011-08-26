\alias{gtkIconSizeRegister}
\name{gtkIconSizeRegister}
\title{gtkIconSizeRegister}
\description{Registers a new icon size, along the same lines as \verb{GTK_ICON_SIZE_MENU},
etc. Returns the integer value for the size.}
\usage{gtkIconSizeRegister(name, width, height)}
\arguments{
\item{\verb{name}}{name of the icon size}
\item{\verb{width}}{the icon width}
\item{\verb{height}}{the icon height}
}
\value{[\code{\link{GtkIconSize}}] integer value representing the size. \emph{[  \acronym{type}   int]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

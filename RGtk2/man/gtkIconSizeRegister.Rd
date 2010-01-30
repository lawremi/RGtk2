\alias{gtkIconSizeRegister}
\name{gtkIconSizeRegister}
\title{gtkIconSizeRegister}
\description{Registers a new icon size, along the same lines as \verb{GTK_ICON_SIZE_MENU},
etc. Returns the integer value for the size.}
\usage{gtkIconSizeRegister(name, width, height)}
\arguments{
\item{\verb{name}}{[character]  name of the icon size}
\item{\verb{width}}{[integer]  the icon width}
\item{\verb{height}}{[integer]  the icon height}
}
\value{[\code{\link{GtkIconSize}}]  integer value representing the size}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

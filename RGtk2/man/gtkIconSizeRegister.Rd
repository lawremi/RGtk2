\alias{gtkIconSizeRegister}
\name{gtkIconSizeRegister}
\title{gtkIconSizeRegister}
\description{Registers a new icon size, along the same lines as \code{GTK_ICON_SIZE_MENU},
etc. Returns the integer value for the size.}
\usage{gtkIconSizeRegister(name, width, height)}
\arguments{
\item{\code{name}}{[character]  name of the icon size}
\item{\code{width}}{[integer]  the icon width}
\item{\code{height}}{[integer]  the icon height}
}
\value{[\code{\link{GtkIconSize}}]  integer value representing the size}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

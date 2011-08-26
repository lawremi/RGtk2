\alias{gtkEntryGetIconAtPos}
\name{gtkEntryGetIconAtPos}
\title{gtkEntryGetIconAtPos}
\description{Finds the icon at the given position and return its index.
If \code{x}, \code{y} doesn't lie inside an icon, -1 is returned.
This function is intended for use in a \verb{"query-tooltip"}
signal handler.}
\usage{gtkEntryGetIconAtPos(object, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{x}}{the x coordinate of the position to find}
\item{\verb{y}}{the y coordinate of the position to find}
}
\details{Since 2.16}
\value{[integer] the index of the icon at the given position, or -1}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

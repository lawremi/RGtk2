\alias{pangoLayoutGetCursorPos}
\name{pangoLayoutGetCursorPos}
\title{pangoLayoutGetCursorPos}
\description{Given an index within a layout, determines the positions that of the
strong and weak cursors if the insertion point is at that
index. The position of each cursor is stored as a zero-width
rectangle. The strong cursor location is the location where
characters of the directionality equal to the base direction of the
layout are inserted.  The weak cursor location is the location
where characters of the directionality opposite to the base
direction of the layout are inserted.}
\usage{pangoLayoutGetCursorPos(object, index)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{index}}{[integer]  the byte index of the cursor}
}
\value{
A list containing the following elements:
\item{\verb{strong.pos}}{[\code{\link{PangoRectangle}}]  location to store the strong cursor position (may be \code{NULL})}
\item{\verb{weak.pos}}{[\code{\link{PangoRectangle}}]  location to store the weak cursor position (may be \code{NULL})}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

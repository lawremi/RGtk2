\alias{gtkWidgetTranslateCoordinates}
\name{gtkWidgetTranslateCoordinates}
\title{gtkWidgetTranslateCoordinates}
\description{Translate coordinates relative to \code{src.widget}'s allocation to coordinates
relative to \code{dest.widget}'s allocations. In order to perform this
operation, both widgets must be realized, and must share a common
toplevel.}
\usage{gtkWidgetTranslateCoordinates(object, dest.widget, src.x, src.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]   a \code{\link{GtkWidget}}}
\item{\code{dest.widget}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{src.x}}{[integer]  X position relative to \code{src.widget}}
\item{\code{src.y}}{[integer]  Y position relative to \code{src.widget}}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{FALSE} if either widget was not realized, or there
  was no common ancestor. In this case, nothing is stored in
  *\code{dest.x} and *\code{dest.y}. Otherwise \code{TRUE}.}
\item{\code{dest.x}}{[integer]  location to store X position relative to \code{dest.widget}}
\item{\code{dest.y}}{[integer]  location to store Y position relative to \code{dest.widget}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

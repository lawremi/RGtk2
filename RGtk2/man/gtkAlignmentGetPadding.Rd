\alias{gtkAlignmentGetPadding}
\name{gtkAlignmentGetPadding}
\title{gtkAlignmentGetPadding}
\description{Gets the padding on the different sides of the widget.
See \code{\link{gtkAlignmentSetPadding}}.}
\usage{gtkAlignmentGetPadding(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkAlignment}}]  a \verb{\link{GtkAlignment}}}}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{\verb{padding.top}}{[numeric]  location to store the padding for the top of the widget, or \code{NULL}}
\item{\verb{padding.bottom}}{[numeric]  location to store the padding for the bottom of the widget, or \code{NULL}}
\item{\verb{padding.left}}{[numeric]  location to store the padding for the left of the widget, or \code{NULL}}
\item{\verb{padding.right}}{[numeric]  location to store the padding for the right of the widget, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

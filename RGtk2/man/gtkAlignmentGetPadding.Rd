\alias{gtkAlignmentGetPadding}
\name{gtkAlignmentGetPadding}
\title{gtkAlignmentGetPadding}
\description{Gets the padding on the different sides of the widget.
See \code{\link{gtkAlignmentSetPadding}}.}
\usage{gtkAlignmentGetPadding(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkAlignment}}]  a \code{\link{GtkAlignment}}}}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{\code{padding.top}}{[numeric]  location to store the padding for the top of the widget, or \code{NULL}}
\item{\code{padding.bottom}}{[numeric]  location to store the padding for the bottom of the widget, or \code{NULL}}
\item{\code{padding.left}}{[numeric]  location to store the padding for the left of the widget, or \code{NULL}}
\item{\code{padding.right}}{[numeric]  location to store the padding for the right of the widget, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

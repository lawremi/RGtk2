\alias{gtkRangeGetRangeRect}
\name{gtkRangeGetRangeRect}
\title{gtkRangeGetRangeRect}
\description{This function returns the area that contains the range's trough
and its steppers, in widget->window coordinates.}
\usage{gtkRangeGetRangeRect(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRange}}}}
\details{This function is useful mainly for \code{\link{GtkRange}} subclasses.
  Since 2.20}
\value{
A list containing the following elements:
\item{\verb{range.rect}}{return location for the range rectangle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

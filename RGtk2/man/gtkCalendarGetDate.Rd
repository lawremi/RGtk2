\alias{gtkCalendarGetDate}
\name{gtkCalendarGetDate}
\title{gtkCalendarGetDate}
\description{Obtains the selected date from a \code{\link{GtkCalendar}}.}
\usage{gtkCalendarGetDate(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkCalendar}}]  a \code{\link{GtkCalendar}}}}
\value{
A list containing the following elements:
\item{\code{year}}{[numeric]  location to store the year number, or \code{NULL}}
\item{\code{month}}{[numeric]  location to store the month number (between 0 and 11), or \code{NULL}}
\item{\code{day}}{[numeric]  location to store the day number (between 1 and 31), or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

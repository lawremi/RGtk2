\alias{gtkCalendarGetDate}
\name{gtkCalendarGetDate}
\title{gtkCalendarGetDate}
\description{Obtains the selected date from a \code{\link{GtkCalendar}}.}
\usage{gtkCalendarGetDate(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkCalendar}}}}
\value{
A list containing the following elements:
\item{\verb{year}}{location to store the year number, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{month}}{location to store the month number (between 0 and 11), or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{day}}{location to store the day number (between 1 and 31), or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkCalendarSetDetailFunc}
\name{gtkCalendarSetDetailFunc}
\title{gtkCalendarSetDetailFunc}
\description{Installs a function which provides Pango markup with detail information
for each day. Examples for such details are holidays or appointments. That
information is shown below each day when \verb{"show-details"} is set.
A tooltip containing with full detail information is provided, if the entire
text should not fit into the details area, or if \verb{"show-details"}
is not set.}
\usage{gtkCalendarSetDetailFunc(object, func, data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCalendar}}.}
\item{\verb{func}}{a function providing details for each day.}
\item{\verb{data}}{data to pass to \code{func} invokations.}
}
\details{The size of the details area can be restricted by setting the
\verb{"detail-width-chars"} and \verb{"detail-height-rows"}
properties.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

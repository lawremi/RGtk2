\alias{gtkRecentFilterAddCustom}
\name{gtkRecentFilterAddCustom}
\title{gtkRecentFilterAddCustom}
\description{Adds a rule to a filter that allows resources based on a custom callback
function. The bitfield \code{needed} which is passed in provides information
about what sorts of information that the filter function needs;
this allows GTK+ to avoid retrieving expensive information when
it isn't needed by the filter.}
\usage{gtkRecentFilterAddCustom(object, needed, func, data)}
\arguments{
\item{\code{object}}{[\code{\link{GtkRecentFilter}}]  a \code{\link{GtkRecentFilter}}}
\item{\code{needed}}{[\code{\link{GtkRecentFilterFlags}}]  bitfield of flags indicating the information that the custom
         filter function needs.}
\item{\code{func}}{[\code{\link{GtkRecentFilterFunc}}]  callback function; if the function returns \code{TRUE}, then
  the file will be displayed.}
\item{\code{data}}{[R object]  data to pass to \code{func}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{cairoPopGroup}
\name{cairoPopGroup}
\title{cairoPopGroup}
\description{Terminates the redirection begun by a call to \code{\link{cairoPushGroup}} or
\code{\link{cairoPushGroupWithContent}} and returns a new pattern
containing the results of all drawing operations performed to the
group.}
\usage{cairoPopGroup(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{The \code{\link{cairoPopGroup}} function calls \code{\link{cairoRestore}}, (balancing a
call to \code{\link{cairoSave}} by the push_group function), so that any
changes to the graphics state will not be visible outside the
group.  
  Since 1.2}
\value{[\code{\link{CairoPattern}}]  a newly created (surface) pattern containing the
results of all drawing operations performed to the group.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{cairoPopGroupToSource}
\name{cairoPopGroupToSource}
\title{cairoPopGroupToSource}
\description{Terminates the redirection begun by a call to \code{\link{cairoPushGroup}} or
\code{\link{cairoPushGroupWithContent}} and installs the resulting pattern
as the source pattern in the given cairo context.}
\usage{cairoPopGroupToSource(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{The behavior of this function is equivalent to the sequence of
operations:
  \preformatted{
group <- cr$popGroup()
cr$setSource(group)
}  
but is more convenient as their is no need for a variable to store
the short-lived pointer to the pattern.
  
The \code{\link{cairoPopGroup}} function calls \code{\link{cairoRestore}}, (balancing a
call to \code{\link{cairoSave}} by the push_group function), so that any
changes to the graphics state will not be visible outside the
group.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

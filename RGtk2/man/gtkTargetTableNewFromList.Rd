\alias{gtkTargetTableNewFromList}
\name{gtkTargetTableNewFromList}
\title{gtkTargetTableNewFromList}
\description{This function creates an \code{\link{GtkTargetEntry}} list that contains the
same targets as the passed \code{list}.}
\usage{gtkTargetTableNewFromList(list)}
\arguments{\item{\verb{list}}{a \code{\link{GtkTargetList}}}}
\details{Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GtkTargetEntry}}] the new table.}
\item{\verb{n.targets}}{return location for the number ot targets in the table}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

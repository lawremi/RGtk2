\alias{gSocketConditionCheck}
\name{gSocketConditionCheck}
\title{gSocketConditionCheck}
\description{Checks on the readiness of \code{socket} to perform operations.
The operations specified in \code{condition} are checked for and masked
against the currently-satisfied conditions on \code{socket}. The result
is returned.}
\usage{gSocketConditionCheck(object, condition)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{condition}}{a \code{\link{GIOCondition}} mask to check}
}
\details{It is meaningless to specify \code{G_IO_ERR} or \code{G_IO_HUP} in condition;
these conditions will always be set in the output if they are true.
  
This call never blocks.
  Since 2.22}
\value{[\code{\link{GIOCondition}}] the \code{GIOCondition} mask of the current state}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

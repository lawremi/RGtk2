\alias{gtkTargetListFind}
\name{gtkTargetListFind}
\title{gtkTargetListFind}
\description{Looks up a given target in a \code{\link{GtkTargetList}}.}
\usage{gtkTargetListFind(object, target)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTargetList}}]  a \code{\link{GtkTargetList}}}
\item{\code{target}}{[\code{\link{GdkAtom}}]  an interned atom representing the target to search for}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the target was found, otherwise \code{FALSE}}
\item{\code{info}}{[numeric]  a pointer to the location to store application info for target}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

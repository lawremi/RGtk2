\alias{gtkAccelGroupQuery}
\name{gtkAccelGroupQuery}
\title{gtkAccelGroupQuery}
\description{Queries an accelerator group for all entries matching \code{accel.key} and 
\code{accel.mods}.}
\usage{gtkAccelGroupQuery(object, accel.key, accel.mods)}
\arguments{
\item{\code{object}}{[\code{\link{GtkAccelGroup}}]       the accelerator group to query}
\item{\code{accel.key}}{[numeric]         key value of the accelerator}
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}]        modifier combination of the accelerator}
}
\value{
A list containing the following elements:
\item{retval}{[GtkAccelGroupEntry]           a list of \code{n.entries} \code{GtkAccelGroupEntry} elements, or \code{NULL}. .}
\item{\code{n.entries}}{[numeric]         location to return the number of entries found, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

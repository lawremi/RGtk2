\alias{gtkAccelGroupQuery}
\name{gtkAccelGroupQuery}
\title{gtkAccelGroupQuery}
\description{Queries an accelerator group for all entries matching \code{accel.key} and 
\code{accel.mods}.}
\usage{gtkAccelGroupQuery(object, accel.key, accel.mods)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkAccelGroup}}]       the accelerator group to query}
\item{\verb{accel.key}}{[numeric]         key value of the accelerator}
\item{\verb{accel.mods}}{[\code{\link{GdkModifierType}}]        modifier combination of the accelerator}
}
\value{
A list containing the following elements:
\item{retval}{[GtkAccelGroupEntry]           a list of \code{n.entries} \verb{GtkAccelGroupEntry} elements, or \code{NULL}. }
\item{\verb{n.entries}}{[numeric]         location to return the number of entries found, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

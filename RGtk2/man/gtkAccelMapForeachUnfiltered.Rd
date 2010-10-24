\alias{gtkAccelMapForeachUnfiltered}
\name{gtkAccelMapForeachUnfiltered}
\title{gtkAccelMapForeachUnfiltered}
\description{Loops over all entries in the accelerator map, and execute
\code{foreach.func} on each. The signature of \code{foreach.func} is that of
\code{\link{GtkAccelMapForeach}}, the \code{changed} parameter indicates whether
this accelerator was changed during runtime (thus, would need
saving during an accelerator map dump).}
\usage{gtkAccelMapForeachUnfiltered(data = NULL, foreach.func)}
\arguments{
\item{\verb{data}}{data to be passed into \code{foreach.func}}
\item{\verb{foreach.func}}{function to be executed for each accel map entry}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

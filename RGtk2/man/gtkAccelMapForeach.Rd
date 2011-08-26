\alias{gtkAccelMapForeach}
\name{gtkAccelMapForeach}
\title{gtkAccelMapForeach}
\description{Loops over the entries in the accelerator map whose accel path 
doesn't match any of the filters added with \code{\link{gtkAccelMapAddFilter}}, 
and execute \code{foreach.func} on each. The signature of \code{foreach.func} is 
that of \code{\link{GtkAccelMapForeach}}, the \code{changed} parameter indicates whether
this accelerator was changed during runtime (thus, would need
saving during an accelerator map dump).}
\usage{gtkAccelMapForeach(data = NULL, foreach.func)}
\arguments{
\item{\verb{data}}{data to be passed into \code{foreach.func}}
\item{\verb{foreach.func}}{function to be executed for each accel map entry which
is not filtered out}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

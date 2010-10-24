\alias{gtkAccelMapAddFilter}
\name{gtkAccelMapAddFilter}
\title{gtkAccelMapAddFilter}
\description{Adds a filter to the global list of accel path filters.}
\usage{gtkAccelMapAddFilter(filter.pattern)}
\arguments{\item{\verb{filter.pattern}}{a pattern (see \verb{GPatternSpec})}}
\details{Accel map entries whose accel path matches one of the filters
are skipped by \code{\link{gtkAccelMapForeach}}.
  
This function is intended for GTK+ modules that create their own
menus, but don't want them to be saved into the applications accelerator
map dump.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

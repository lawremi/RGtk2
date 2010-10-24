\alias{cairoSave}
\name{cairoSave}
\title{cairoSave}
\description{Makes a copy of the current state of \code{cr} and saves it
on an internal stack of saved states for \code{cr}. When
\code{\link{cairoRestore}} is called, \code{cr} will be restored to
the saved state. Multiple calls to \code{\link{cairoSave}} and
\code{\link{cairoRestore}} can be nested; each call to \code{\link{cairoRestore}}
restores the state from the matching paired \code{\link{cairoSave}}.}
\usage{cairoSave(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}}
\details{It isn't necessary to clear all saved states before
a \code{\link{Cairo}} is freed.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

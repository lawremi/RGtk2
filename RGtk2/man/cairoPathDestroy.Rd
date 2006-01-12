\alias{cairoPathDestroy}
\name{cairoPathDestroy}
\title{cairoPathDestroy}
\description{Immediately releases all memory associated with \code{path}. After a call
to \code{\link{cairoPathDestroy}} the \code{path} pointer is no longer valid and
should not be used further.}
\usage{cairoPathDestroy(path)}
\arguments{\item{\code{path}}{[\code{\link{cairo_path_t}}]  a path previously returned by either \code{\link{cairoCopyPath}} or
\code{\link{cairoCopyPathFlat}}.}}
\details{ Any path
that is created manually (ie. outside of cairo) should be destroyed
manually as well.  .}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

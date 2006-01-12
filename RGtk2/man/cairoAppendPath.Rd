\alias{cairoAppendPath}
\name{cairoAppendPath}
\title{cairoAppendPath}
\description{Append the \code{path} onto the current path. The \code{path} may be either the
return value from one of \code{\link{cairoCopyPath}} or
\code{\link{cairoCopyPathFlat}} or it may be constructed manually.  See
\code{\link{cairo_path_t}} for details on how the path data structure should be
initialized, and note that \code{path->status} must be
initialized to \code{CAIRO_STATUS_SUCCESS}.}
\usage{cairoAppendPath(cr, path)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo context}
\item{\code{path}}{[\code{\link{cairo_path_t}}]  path to be appended}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

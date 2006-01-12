\alias{cairoCopyPath}
\name{cairoCopyPath}
\title{cairoCopyPath}
\description{Creates a copy of the current path and returns it to the user as a
\code{\link{cairo_path_t}}. See \code{\link{cairo_path_data_t}} for hints on how to iterate
over the returned data structure.}
\usage{cairoCopyPath(cr)}
\arguments{\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo context}}
\details{Return value: the copy of the current path.
  
This function will always return a valid pointer, but the result
will have no data (\code{data==NULL} and
\code{num_data==0}), if either of the following
conditions hold:
  
\enumerate{
\item 
\item 
}
  
In either case, \code{path->status} will be set to
\code{CAIRO_STATUS_NO_MEMORY} (regardless of what the error status in
\code{cr} might have been).  .}
\value{[\code{\link{cairo_path_t}}]  the copy of the current path.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

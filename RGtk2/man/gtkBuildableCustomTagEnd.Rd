\alias{gtkBuildableCustomTagEnd}
\name{gtkBuildableCustomTagEnd}
\title{gtkBuildableCustomTagEnd}
\description{This is called at the end of each custom element handled by 
the buildable.}
\usage{gtkBuildableCustomTagEnd(object, builder, child, tagname, data)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuildable}}]  A \code{\link{GtkBuildable}}}
\item{\code{builder}}{[\code{\link{GtkBuilder}}]  \code{\link{GtkBuilder}} used to construct this object}
\item{\code{child}}{[\code{\link{GObject}}]  child object or \code{NULL} for non-child tags}
\item{\code{tagname}}{[character]  name of tag}
\item{\code{data}}{[R object]  user data that will be passed in to parser functions}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkBuildableCustomTagEnd}
\name{gtkBuildableCustomTagEnd}
\title{gtkBuildableCustomTagEnd}
\description{This is called at the end of each custom element handled by 
the buildable.}
\usage{gtkBuildableCustomTagEnd(object, builder, child, tagname, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuildable}}]  A \verb{\link{GtkBuildable}}}
\item{\verb{builder}}{[\verb{\link{GtkBuilder}}] \verb{\link{GtkBuilder}} used to construct this object}
\item{\verb{child}}{[\verb{\link{GObject}}]  child object or \code{NULL} for non-child tags}
\item{\verb{tagname}}{[character]  name of tag}
\item{\verb{data}}{[R object]  user data that will be passed in to parser functions}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

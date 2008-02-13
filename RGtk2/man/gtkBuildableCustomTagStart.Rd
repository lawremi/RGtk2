\alias{gtkBuildableCustomTagStart}
\name{gtkBuildableCustomTagStart}
\title{gtkBuildableCustomTagStart}
\description{This is called for each unknown element under <child>.}
\usage{gtkBuildableCustomTagStart(object, builder, child, tagname, parser, data)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuildable}}]  a \code{\link{GtkBuildable}}}
\item{\code{builder}}{[\code{\link{GtkBuilder}}]  a \code{\link{GtkBuilder}} used to construct this object}
\item{\code{child}}{[\code{\link{GObject}}]  child object or \code{NULL} for non-child tags}
\item{\code{tagname}}{[character]  name of tag}
\item{\code{parser}}{[GMarkupParser]  a \code{GMarkupParser} structure to fill in}
\item{\code{data}}{[R object]  return location for user data that will be passed in 
  to parser functions}
}
\details{  Since  2.12}
\value{[logical]  \code{TRUE} if a object has a custom implementation, \code{FALSE}
         if it doesn't.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkBuildableCustomTagStart}
\name{gtkBuildableCustomTagStart}
\title{gtkBuildableCustomTagStart}
\description{This is called for each unknown element under <child>.}
\usage{gtkBuildableCustomTagStart(object, builder, child, tagname, parser, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuildable}}]  a \verb{\link{GtkBuildable}}}
\item{\verb{builder}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}} used to construct this object}
\item{\verb{child}}{[\verb{\link{GObject}}]  child object or \code{NULL} for non-child tags}
\item{\verb{tagname}}{[character]  name of tag}
\item{\verb{parser}}{[GMarkupParser]  a \verb{GMarkupParser} structure to fill in}
\item{\verb{data}}{[R object]  return location for user data that will be passed in 
  to parser functions}
}
\details{  Since  2.12}
\value{[logical] \code{TRUE} if a object has a custom implementation, \code{FALSE}
         if it doesn't.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

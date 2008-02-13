\alias{gtkBuildableCustomFinished}
\name{gtkBuildableCustomFinished}
\title{gtkBuildableCustomFinished}
\description{This is similar to \code{\link{gtkBuildableParserFinished}} but is
called once for each custom tag handled by the \code{buildable}.}
\usage{gtkBuildableCustomFinished(object, builder, child, tagname, data)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuildable}}]  a \code{\link{GtkBuildable}}}
\item{\code{builder}}{[\code{\link{GtkBuilder}}]  a \code{\link{GtkBuilder}}}
\item{\code{child}}{[\code{\link{GObject}}]  child object or \code{NULL} for non-child tags}
\item{\code{tagname}}{[character]  the name of the tag}
\item{\code{data}}{[R object]  user data created in custom\_tag\_start}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

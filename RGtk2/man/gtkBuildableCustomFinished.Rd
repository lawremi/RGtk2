\alias{gtkBuildableCustomFinished}
\name{gtkBuildableCustomFinished}
\title{gtkBuildableCustomFinished}
\description{This is similar to \code{\link{gtkBuildableParserFinished}} but is
called once for each custom tag handled by the \code{buildable}.}
\usage{gtkBuildableCustomFinished(object, builder, child, tagname, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuildable}}]  a \verb{\link{GtkBuildable}}}
\item{\verb{builder}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}}}
\item{\verb{child}}{[\verb{\link{GObject}}]  child object or \code{NULL} for non-child tags}
\item{\verb{tagname}}{[character]  the name of the tag}
\item{\verb{data}}{[R object]  user data created in custom_tag_start}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

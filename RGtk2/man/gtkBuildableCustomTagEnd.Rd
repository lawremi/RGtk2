\alias{gtkBuildableCustomTagEnd}
\name{gtkBuildableCustomTagEnd}
\title{gtkBuildableCustomTagEnd}
\description{This is called at the end of each custom element handled by 
the buildable.}
\usage{gtkBuildableCustomTagEnd(object, builder, child, tagname, data)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkBuildable}}}
\item{\verb{builder}}{\code{\link{GtkBuilder}} used to construct this object}
\item{\verb{child}}{child object or \code{NULL} for non-child tags. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tagname}}{name of tag}
\item{\verb{data}}{user data that will be passed in to parser functions}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

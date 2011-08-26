\alias{gtkBuildableCustomFinished}
\name{gtkBuildableCustomFinished}
\title{gtkBuildableCustomFinished}
\description{This is similar to \code{\link{gtkBuildableParserFinished}} but is
called once for each custom tag handled by the \code{buildable}.}
\usage{gtkBuildableCustomFinished(object, builder, child, tagname, data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuildable}}}
\item{\verb{builder}}{a \code{\link{GtkBuilder}}}
\item{\verb{child}}{child object or \code{NULL} for non-child tags. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tagname}}{the name of the tag}
\item{\verb{data}}{user data created in custom_tag_start}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkBuildableParserFinished}
\name{gtkBuildableParserFinished}
\title{gtkBuildableParserFinished}
\description{Called when the builder finishes the parsing of a 
GtkBuilder UI definition. 
Note that this will be called once for each time 
\code{\link{gtkBuilderAddFromFile}} or \code{\link{gtkBuilderAddFromString}} 
is called on a builder.}
\usage{gtkBuildableParserFinished(object, builder)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuildable}}]  a \code{\link{GtkBuildable}}}
\item{\code{builder}}{[\code{\link{GtkBuilder}}]  a \code{\link{GtkBuilder}}}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

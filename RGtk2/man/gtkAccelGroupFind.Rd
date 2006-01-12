\alias{gtkAccelGroupFind}
\name{gtkAccelGroupFind}
\title{gtkAccelGroupFind}
\description{Finds the first entry in an accelerator group for which 
\code{find.func} returns \code{TRUE} and returns its \code{\link{GtkAccelKey}}.}
\usage{gtkAccelGroupFind(object, find.func, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkAccelGroup}}]  a \code{\link{GtkAccelGroup}}}
\item{\code{find.func}}{[\code{\link{GtkAccelGroupFindFunc}}]  a function to filter the entries of \code{accel.group} with}
\item{\code{data}}{[R object]  data to pass to \code{find.func}}
}
\value{[\code{\link{GtkAccelKey}}]  the key of the first entry passing \code{find.func}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

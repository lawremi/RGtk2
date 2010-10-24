\alias{gtkAccelGroupFind}
\name{gtkAccelGroupFind}
\title{gtkAccelGroupFind}
\description{Finds the first entry in an accelerator group for which 
\code{find.func} returns \code{TRUE} and returns its \code{\link{GtkAccelKey}}.}
\usage{gtkAccelGroupFind(object, find.func, data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAccelGroup}}}
\item{\verb{find.func}}{a function to filter the entries of \code{accel.group} with}
\item{\verb{data}}{data to pass to \code{find.func}}
}
\value{[\code{\link{GtkAccelKey}}] the key of the first entry passing \code{find.func}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

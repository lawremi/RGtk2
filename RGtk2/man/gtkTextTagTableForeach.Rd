\alias{gtkTextTagTableForeach}
\name{gtkTextTagTableForeach}
\title{gtkTextTagTableForeach}
\description{Calls \code{func} on each tag in \code{table}, with user data \code{data}.
Note that the table may not be modified while iterating 
over it (you can't add/remove tags).}
\usage{gtkTextTagTableForeach(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextTagTable}}}
\item{\verb{func}}{a function to call on each tag}
\item{\verb{data}}{user data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

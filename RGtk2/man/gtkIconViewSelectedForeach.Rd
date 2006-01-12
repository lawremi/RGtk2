\alias{gtkIconViewSelectedForeach}
\name{gtkIconViewSelectedForeach}
\title{gtkIconViewSelectedForeach}
\description{Calls a function for each selected icon. Note that the model or
selection cannot be modified from within this function.}
\usage{gtkIconViewSelectedForeach(object, func, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  A \code{\link{GtkIconView}}.}
\item{\code{func}}{[\code{\link{GtkIconViewForeachFunc}}]  The funcion to call for each selected icon.}
\item{\code{data}}{[R object]  User data to pass to the function.}
}
\details{  Since  2.6 }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

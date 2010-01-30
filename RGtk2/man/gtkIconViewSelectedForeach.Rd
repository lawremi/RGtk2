\alias{gtkIconViewSelectedForeach}
\name{gtkIconViewSelectedForeach}
\title{gtkIconViewSelectedForeach}
\description{Calls a function for each selected icon. Note that the model or
selection cannot be modified from within this function.}
\usage{gtkIconViewSelectedForeach(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconView}}]  A \verb{\link{GtkIconView}}.}
\item{\verb{func}}{[\verb{\link{GtkIconViewForeachFunc}}]  The funcion to call for each selected icon.}
\item{\verb{data}}{[R object]  User data to pass to the function.}
}
\details{  Since  2.6 }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

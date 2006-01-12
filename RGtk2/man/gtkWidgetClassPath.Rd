\alias{gtkWidgetClassPath}
\name{gtkWidgetClassPath}
\title{gtkWidgetClassPath}
\description{Same as \code{\link{gtkWidgetPath}}, but always uses the name of a widget's type,
never uses a custom name set with \code{\link{gtkWidgetSetName}}.}
\usage{gtkWidgetClassPath(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\value{
A list containing the following elements:
\item{\code{path.length}}{[numeric]  location to store the length of the class path, or \code{NULL}}
\item{\code{path}}{[character]  location to store the class path as an allocated string, or \code{NULL}}
\item{\code{path.reversed}}{[character]  location to store the reverse class path as an allocated string, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

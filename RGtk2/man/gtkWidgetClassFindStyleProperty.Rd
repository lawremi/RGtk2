\alias{gtkWidgetClassFindStyleProperty}
\name{gtkWidgetClassFindStyleProperty}
\title{gtkWidgetClassFindStyleProperty}
\description{Finds a style property of a widget class by name.}
\usage{gtkWidgetClassFindStyleProperty(klass, property.name)}
\arguments{
\item{\code{klass}}{[\code{\link{GtkWidgetClass}}]  a \code{\link{GtkWidgetClass}}}
\item{\code{property.name}}{[character]  the name of the style property to find}
}
\details{  Since  2.2}
\value{[\code{\link{GParamSpec}}]  the \code{\link{GParamSpec}} of the style property or \code{NULL} if \code{class} has no
  style property with that name.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

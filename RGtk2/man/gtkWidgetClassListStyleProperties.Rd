\alias{gtkWidgetClassListStyleProperties}
\name{gtkWidgetClassListStyleProperties}
\title{gtkWidgetClassListStyleProperties}
\description{Returns all style properties of a widget class.}
\usage{gtkWidgetClassListStyleProperties(klass)}
\arguments{\item{\code{klass}}{[\code{\link{GtkWidgetClass}}]  a \code{\link{GtkWidgetClass}}}}
\details{  Since  2.2}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GParamSpec}}]  an newly allocated list of \code{\link{GParamSpec}}*.}
\item{\code{n.properties}}{[numeric]  location to return the number of style properties found}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

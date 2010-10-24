\alias{gtkWidgetClassListStyleProperties}
\name{gtkWidgetClassListStyleProperties}
\title{gtkWidgetClassListStyleProperties}
\description{Returns all style properties of a widget class.}
\usage{gtkWidgetClassListStyleProperties(klass)}
\arguments{\item{\verb{klass}}{a \code{\link{GtkWidgetClass}}}}
\details{Since 2.2}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GParamSpec}}] an newly allocated list of \code{\link{GParamSpec}}*.}
\item{\verb{n.properties}}{location to return the number of style properties found}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

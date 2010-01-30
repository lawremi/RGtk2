\alias{gtkWidgetClassListStyleProperties}
\name{gtkWidgetClassListStyleProperties}
\title{gtkWidgetClassListStyleProperties}
\description{Returns all style properties of a widget class.}
\usage{gtkWidgetClassListStyleProperties(klass)}
\arguments{\item{\verb{klass}}{[\verb{\link{GtkWidgetClass}}]  a \verb{\link{GtkWidgetClass}}}}
\details{  Since  2.2}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GParamSpec}}]  an newly allocated list of \verb{\link{GParamSpec}}*.}
\item{\verb{n.properties}}{[numeric]  location to return the number of style properties found}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

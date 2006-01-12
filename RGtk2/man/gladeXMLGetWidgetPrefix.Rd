\alias{gladeXMLGetWidgetPrefix}
\name{gladeXMLGetWidgetPrefix}
\title{gladeXMLGetWidgetPrefix}
\description{This function is used to get a list of pointers to the GtkWidget(s)
with names that start with the string \code{name} in the interface description.
You would use this if you have to do something  to all of these widgets
after loading.}
\usage{gladeXMLGetWidgetPrefix(object, name)}
\arguments{
\item{\code{object}}{[\code{\link{GladeXML}}]  the GladeXML object.}
\item{\code{name}}{[char]  the name of the widget.}
}
\value{[list]  A list of the widget that match \code{name} as the start of their
name, or \code{NULL} if none exists.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gladeXMLGetWidget}
\name{gladeXMLGetWidget}
\title{gladeXMLGetWidget}
\description{This function is used to get a pointer to the GtkWidget corresponding to
\code{name} in the interface description.  You would use this if you have to do
anything to the widget after loading.}
\usage{gladeXMLGetWidget(object, name)}
\arguments{
\item{\code{object}}{[\code{\link{GladeXML}}]  the GladeXML object.}
\item{\code{name}}{[char]  the name of the widget.}
}
\value{[\code{\link{GtkWidget}}]  the widget matching \code{name}, or \code{NULL} if none exists.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

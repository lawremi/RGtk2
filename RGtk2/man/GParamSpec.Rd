\name{GParamSpec}
\alias{GParamSpec}
\alias{as.GParamSpec}
\alias{gParamSpec}
\alias{GParamFlags}
\title{Parameter metadata in GObject}
\description{
\code{GParamSpec} is an object structure that encapsulates the metadata 
required to specify parameters, such as e.g. \code{GObject} properties.
}
\usage{
gParamSpec(type, name, nick = NULL, blurb = NULL, flags = NULL, ...)
as.GParamSpec(x)
}
\arguments{
\item{type}{a string naming the R type (ie 'character', 'numeric', ...) corresponding
to the desired \code{GParamSpec} (property) type}
\item{name}{the name of the \code{GParamSpec} (property)}
\item{nick}{the nickname of the \code{GParamSpec} (property)}
\item{blurb}{a short string description of the \code{GParamSpec} (property)}
\item{flags}{a vector of values from the \code{GParamFlags} enumeration - 
please see the GObject documentation for more information}
\item{...}{named arguments specific to the type of \code{GParamSpec} - 
please see the GObject documentation for more information}
\item{x}{A list corresponding to a \code{GParamSpec} - the class
of the list should be the name of the \code{GParamSpec} type}
}
\details{
As a transparent type, the various \code{GParamSpec} structures should be returned to 
R as corresponding lists, and \code{as.GParamSpec} coerces a list to one understandable
by the C wrappers, assuming that the class of the list is the name of the \code{GParamSpec} type.
\code{gParamSpec} is a more user-friendly wrapper to \code{as.GParamSpec} that
constructs the correctly-classed list on the fly from its arguments.
}
\value{
A list representing a \code{GParamSpec}, ready to be passed to the underlying C libraries
}
\author{Michael Lawrence}
\references{
\url{https://developer-old.gnome.org/gobject/stable/gobject-GParamSpec.html}
}
\keyword{interface}
\keyword{internal}


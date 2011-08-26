\alias{gdkWindowNew}
\name{gdkWindowNew}
\title{gdkWindowNew}
\description{Creates a new \code{\link{GdkWindow}} using the attributes from
\code{attributes}. See \code{\link{GdkWindowAttr}} and \code{\link{GdkWindowAttributesType}} for
more details.  Note: to use this on displays other than the default
display, \code{parent} must be specified.}
\usage{gdkWindowNew(parent = NULL, attributes)}
\arguments{
\item{\verb{parent}}{a \code{\link{GdkWindow}}, or \code{NULL} to create the window as a child of
the default root window for the default display. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{attributes}}{attributes of the new window}
}
\value{[\code{\link{GdkWindow}}] the new \code{\link{GdkWindow}}. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

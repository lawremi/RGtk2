\alias{gtkBuilderConnectSignalsFull}
\name{gtkBuilderConnectSignalsFull}
\title{gtkBuilderConnectSignalsFull}
\description{This function can be thought of the interpreted language binding
version of \code{\link{gtkBuilderConnectSignals}}, except that it does not
require GModule to function correctly.}
\usage{gtkBuilderConnectSignalsFull(object, func, user.data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{func}}{the function used to connect the signals}
\item{\verb{user.data}}{arbitrary data that will be passed to the connection function}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

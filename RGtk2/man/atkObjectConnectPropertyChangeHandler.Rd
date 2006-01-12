\alias{atkObjectConnectPropertyChangeHandler}
\name{atkObjectConnectPropertyChangeHandler}
\title{atkObjectConnectPropertyChangeHandler}
\description{Specifies a function to be called when a property changes value.}
\usage{atkObjectConnectPropertyChangeHandler(object, handler)}
\arguments{
\item{\code{object}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}
\item{\code{handler}}{[AtkPropertyChangeHandler]  a function to be called when a property changes its value}
}
\value{[numeric]  a \code{numeric} which is the handler id used in 
\code{\link{atkObjectRemovePropertyChangeHandler}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

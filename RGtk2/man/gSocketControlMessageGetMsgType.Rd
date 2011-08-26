\alias{gSocketControlMessageGetMsgType}
\name{gSocketControlMessageGetMsgType}
\title{gSocketControlMessageGetMsgType}
\description{Returns the protocol specific type of the control message.
For instance, for UNIX fd passing this would be SCM_RIGHTS.}
\usage{gSocketControlMessageGetMsgType(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocketControlMessage}}}}
\details{Since 2.22}
\value{[integer] an integer describing the type of control message}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

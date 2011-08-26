\alias{gdkSetPointerHooks}
\name{gdkSetPointerHooks}
\title{gdkSetPointerHooks}
\description{This function allows for hooking into the operation
of getting the current location of the pointer. This
is only useful for such low-level tools as an
event recorder. Applications should never have any
reason to use this facility.}
\usage{gdkSetPointerHooks(object, new.hooks)}
\arguments{\item{\verb{new.hooks}}{a table of pointers to functions for getting
quantities related to the current pointer position,
or \code{NULL} to restore the default table.}}
\details{This function is not multihead safe. For multihead operation,
see \code{\link{gdkDisplaySetPointerHooks}}.}
\value{[GdkPointerHooks] the previous pointer hook table}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

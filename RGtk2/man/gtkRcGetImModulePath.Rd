\alias{gtkRcGetImModulePath}
\name{gtkRcGetImModulePath}
\title{gtkRcGetImModulePath}
\description{Obtains the path in which to look for IM modules. See the documentation
of the \env{GTK_PATH}
environment variable for more details about looking up modules. This
function is useful solely for utilities supplied with GTK+ and should
not be used by applications under normal circumstances.}
\usage{gtkRcGetImModulePath()}
\value{[character] a newly-allocated string containing the path in which to
look for IM modules.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

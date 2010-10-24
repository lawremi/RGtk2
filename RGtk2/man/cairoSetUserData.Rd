\alias{cairoSetUserData}
\name{cairoSetUserData}
\title{cairoSetUserData}
\description{Attach user data to \code{cr}.  To remove user data from a surface,
call this function with the key that was used to set it and \code{NULL}
for \code{data}.}
\usage{cairoSetUserData(cr, key, user.data)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{key}}{[\code{\link{CairoUserDataKey}}]  the a \code{\link{CairoUserDataKey}} to attach the user data to}
\item{\verb{user.data}}{[R object]  the user data to attach to the \code{\link{Cairo}}}
}
\details{  Since 1.4}
\value{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} or \code{CAIRO_STATUS_NO_MEMORY} if a
slot could not be allocated for the user data.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

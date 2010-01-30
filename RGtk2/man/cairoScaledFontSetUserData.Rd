\alias{cairoScaledFontSetUserData}
\name{cairoScaledFontSetUserData}
\title{cairoScaledFontSetUserData}
\description{Attach user data to \code{scaled.font}.  To remove user data from a surface,
call this function with the key that was used to set it and \code{NULL}
for \code{data}.}
\usage{cairoScaledFontSetUserData(scaled.font, key, user.data)}
\arguments{
\item{\verb{scaled.font}}{[\verb{\link{CairoScaledFont}}]  a \verb{\link{CairoScaledFont}}}
\item{\verb{key}}{[\verb{\link{CairoUserDataKey}}]  the a \verb{\link{CairoUserDataKey}} to attach the user data to}
\item{\verb{user.data}}{[R object]  the user data to attach to the \verb{\link{CairoScaledFont}}}
}
\details{  Since  1.4}
\value{[\verb{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} or \code{CAIRO_STATUS_NO_MEMORY} if a
slot could not be allocated for the user data.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

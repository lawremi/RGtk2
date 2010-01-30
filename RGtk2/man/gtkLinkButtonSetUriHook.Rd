\alias{gtkLinkButtonSetUriHook}
\name{gtkLinkButtonSetUriHook}
\title{gtkLinkButtonSetUriHook}
\description{Sets \code{func} as the function that should be invoked every time a user clicks
a \verb{\link{GtkLinkButton}}. This function is called before every callback registered
for the "clicked" signal.}
\usage{gtkLinkButtonSetUriHook(func, data)}
\arguments{
\item{\verb{func}}{[\verb{\link{GtkLinkButtonUriFunc}}]  a function called each time a \verb{\link{GtkLinkButton}} is clicked, or \code{NULL}}
\item{\verb{data}}{[R object]  user data to be passed to \code{func}, or \code{NULL}}
}
\details{  Since  2.10}
\value{[\verb{\link{GtkLinkButtonUriFunc}}]  the previously set hook function.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

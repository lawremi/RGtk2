\alias{gtkLinkButtonSetUriHook}
\name{gtkLinkButtonSetUriHook}
\title{gtkLinkButtonSetUriHook}
\description{Sets \code{func} as the function that should be invoked every time a user clicks
a \code{\link{GtkLinkButton}}. This function is called before every callback registered
for the "clicked" signal.}
\usage{gtkLinkButtonSetUriHook(func, data)}
\arguments{
\item{\verb{func}}{a function called each time a \code{\link{GtkLinkButton}} is clicked, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{data}}{user data to be passed to \code{func}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If no uri hook has been set, GTK+ defaults to calling \code{\link{gtkShowUri}}.
  Since 2.10}
\value{[\code{\link{GtkLinkButtonUriFunc}}] the previously set hook function.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

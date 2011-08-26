\alias{gtkAssistantSetForwardPageFunc}
\name{gtkAssistantSetForwardPageFunc}
\title{gtkAssistantSetForwardPageFunc}
\description{Sets the page forwarding function to be \code{page.func}, this function will
be used to determine what will be the next page when the user presses
the forward button. Setting \code{page.func} to \code{NULL} will make the assistant
to use the default forward function, which just goes to the next visible 
page.}
\usage{gtkAssistantSetForwardPageFunc(object, page.func, data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAssistant}}}
\item{\verb{page.func}}{the \code{\link{GtkAssistantPageFunc}}, or \code{NULL} to use the default one. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{data}}{user data for \code{page.func}}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

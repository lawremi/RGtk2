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
\item{\code{object}}{[\code{\link{GtkAssistant}}]  a \code{\link{GtkAssistant}}}
\item{\code{page.func}}{[\code{\link{GtkAssistantPageFunc}}]  the \code{\link{GtkAssistantPageFunc}}, or \code{NULL} to use the default one}
\item{\code{data}}{[R object]  user data for \code{page.func}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkAssistantGetNthPage}
\name{gtkAssistantGetNthPage}
\title{gtkAssistantGetNthPage}
\description{Returns the child widget contained in page number \code{page.num}.}
\usage{gtkAssistantGetNthPage(object, page.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAssistant}}}
\item{\verb{page.num}}{The index of a page in the \code{assistant}, or -1 to get the last page;}
}
\details{Since 2.10}
\value{[\code{\link{GtkWidget}}] The child widget, or \code{NULL} if \code{page.num} is out of bounds.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

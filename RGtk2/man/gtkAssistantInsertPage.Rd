\alias{gtkAssistantInsertPage}
\name{gtkAssistantInsertPage}
\title{gtkAssistantInsertPage}
\description{Inserts a page in the \code{assistant} at a given position.}
\usage{gtkAssistantInsertPage(object, page, position)}
\arguments{
\item{\code{object}}{[\code{\link{GtkAssistant}}]  a \code{\link{GtkAssistant}}}
\item{\code{page}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{position}}{[integer]  the index (starting at 0) at which to insert the page,
           or -1 to append the page to the \code{assistant}}
}
\details{  Since  2.10}
\value{[integer]  the index (starting from 0) of the inserted page}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

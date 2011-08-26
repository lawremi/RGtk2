\alias{gtkAssistantInsertPage}
\name{gtkAssistantInsertPage}
\title{gtkAssistantInsertPage}
\description{Inserts a page in the \code{assistant} at a given position.}
\usage{gtkAssistantInsertPage(object, page, position)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAssistant}}}
\item{\verb{page}}{a \code{\link{GtkWidget}}}
\item{\verb{position}}{the index (starting at 0) at which to insert the page,
or -1 to append the page to the \code{assistant}}
}
\details{Since 2.10}
\value{[integer] the index (starting from 0) of the inserted page}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

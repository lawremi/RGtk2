\alias{gtkNotebookGetActionWidget}
\name{gtkNotebookGetActionWidget}
\title{gtkNotebookGetActionWidget}
\description{Gets one of the action widgets. See \code{\link{gtkNotebookSetActionWidget}}.}
\usage{gtkNotebookGetActionWidget(object, pack.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{pack.type}}{pack type of the action widget to receive}
}
\details{Since 2.20}
\value{[\code{\link{GtkWidget}}] The action widget with the given \code{pack.type} or
\code{NULL} when this action widget has not been set}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

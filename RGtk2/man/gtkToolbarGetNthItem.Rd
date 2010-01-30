\alias{gtkToolbarGetNthItem}
\name{gtkToolbarGetNthItem}
\title{gtkToolbarGetNthItem}
\description{Returns the \code{n}'th item on \code{toolbar}, or \code{NULL} if the
toolbar does not contain an \code{n}'th item.}
\usage{gtkToolbarGetNthItem(object, n)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolbar}}]  a \verb{\link{GtkToolbar}}}
\item{\verb{n}}{[integer]  A position on the toolbar}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkToolItem}}]  The \code{n}'th \verb{\link{GtkToolItem}} on \code{toolbar}, or \code{NULL} if there
isn't an \code{n}'th item.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

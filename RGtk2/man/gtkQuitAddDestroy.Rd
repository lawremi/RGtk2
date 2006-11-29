\alias{gtkQuitAddDestroy}
\name{gtkQuitAddDestroy}
\title{gtkQuitAddDestroy}
\description{Trigger destruction of \code{object} in case the mainloop at level \code{main.level}
is quit.}
\usage{gtkQuitAddDestroy(main.level, object)}
\arguments{
\item{\code{main.level}}{[numeric] Level of the mainloop which shall trigger the destruction.}
\item{\code{object}}{[\code{\link{GtkObject}}] Object to be destroyed.}
}

\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

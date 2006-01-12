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
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

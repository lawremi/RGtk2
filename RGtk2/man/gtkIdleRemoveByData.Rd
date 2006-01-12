\alias{gtkIdleRemoveByData}
\name{gtkIdleRemoveByData}
\title{gtkIdleRemoveByData}
\description{
Removes the idle function identified by the user data.
\strong{WARNING: \code{gtk_idle_remove_by_data} is deprecated and should not be used in newly-written code. Use \code{gIdleRemoveByData()} instead.}
}
\usage{gtkIdleRemoveByData(data)}
\arguments{\item{\code{data}}{[R object] remove the idle function which was registered with this user data.}}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

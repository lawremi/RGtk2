\alias{gdkWindowGetToplevel}
\name{gdkWindowGetToplevel}
\title{gdkWindowGetToplevel}
\description{Gets the toplevel window that's an ancestor of \code{window}.}
\usage{gdkWindowGetToplevel(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{Any window type but \code{GDK_WINDOW_CHILD} is considered a
toplevel window, as is a \code{GDK_WINDOW_CHILD} window that
has a root window as parent.}
\value{[\code{\link{GdkWindow}}] the toplevel window containing \code{window}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

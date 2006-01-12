\alias{gdkWindowGetChildren}
\name{gdkWindowGetChildren}
\title{gdkWindowGetChildren}
\description{Gets the list of children of \code{window} known to GDK.
This function only returns children created via GDK,
so for example it's useless when used with the root window;
it only returns windows an application created itself.}
\usage{gdkWindowGetChildren(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}}
\details{  .}
\value{[list]  list of child windows inside \code{window}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkWindowPeekChildren}
\name{gdkWindowPeekChildren}
\title{gdkWindowPeekChildren}
\description{Like \code{\link{gdkWindowGetChildren}}, but does not copy the list of
children, so the list does not need to be freed.}
\usage{gdkWindowPeekChildren(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\value{[list] a reference to the list of child windows in \code{window}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

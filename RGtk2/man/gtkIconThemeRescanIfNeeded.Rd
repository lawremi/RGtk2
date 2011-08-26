\alias{gtkIconThemeRescanIfNeeded}
\name{gtkIconThemeRescanIfNeeded}
\title{gtkIconThemeRescanIfNeeded}
\description{Checks to see if the icon theme has changed; if it has, any
currently cached information is discarded and will be reloaded
next time \code{icon.theme} is accessed.}
\usage{gtkIconThemeRescanIfNeeded(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconTheme}}}}
\details{Since 2.4}
\value{[logical] \code{TRUE} if the icon theme has changed and needed
to be reloaded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

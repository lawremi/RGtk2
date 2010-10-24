\alias{gtkKeySnooperInstall}
\name{gtkKeySnooperInstall}
\title{gtkKeySnooperInstall}
\description{Installs a key snooper function, which will get called on all key events
before delivering them normally.}
\usage{gtkKeySnooperInstall(snooper, func.data = NULL)}
\arguments{
\item{\verb{snooper}}{a \code{\link{GtkKeySnoopFunc}}.}
\item{\verb{func.data}}{data to pass to \code{snooper}.}
}
\value{[numeric] a unique id for this key snooper for use with \code{\link{gtkKeySnooperRemove}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

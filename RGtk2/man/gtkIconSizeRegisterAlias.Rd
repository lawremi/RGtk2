\alias{gtkIconSizeRegisterAlias}
\name{gtkIconSizeRegisterAlias}
\title{gtkIconSizeRegisterAlias}
\description{Registers \code{alias} as another name for \code{target}.
So calling \code{\link{gtkIconSizeFromName}} with \code{alias} as argument
will return \code{target}.}
\usage{gtkIconSizeRegisterAlias(alias, target)}
\arguments{
\item{\verb{alias}}{an alias for \code{target}}
\item{\verb{target}}{an existing icon size. \emph{[  \acronym{type}   int]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

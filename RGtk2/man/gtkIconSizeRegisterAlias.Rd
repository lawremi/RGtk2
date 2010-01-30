\alias{gtkIconSizeRegisterAlias}
\name{gtkIconSizeRegisterAlias}
\title{gtkIconSizeRegisterAlias}
\description{Registers \code{alias} as another name for \code{target}.
So calling \code{\link{gtkIconSizeFromName}} with \code{alias} as argument
will return \code{target}.}
\usage{gtkIconSizeRegisterAlias(alias, target)}
\arguments{
\item{\verb{alias}}{[character]  an alias for \code{target}}
\item{\verb{target}}{[\code{\link{GtkIconSize}}]  an existing icon size}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

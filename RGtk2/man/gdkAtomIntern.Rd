\alias{gdkAtomIntern}
\name{gdkAtomIntern}
\title{gdkAtomIntern}
\description{Finds or creates an atom corresponding to a given string.}
\usage{gdkAtomIntern(atom.name, only.if.exists = FALSE)}
\arguments{
\item{\verb{atom.name}}{a string.}
\item{\verb{only.if.exists}}{if \code{TRUE}, GDK is allowed to not create a new atom, but
just return \code{GDK_NONE} if the requested atom doesn't already
exists. Currently, the flag is ignored, since checking the
existance of an atom is as expensive as creating it.}
}
\value{[\code{\link{GdkAtom}}] the atom corresponding to \code{atom.name}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

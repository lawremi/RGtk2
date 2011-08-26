\alias{gFileAttributeInfoListLookup}
\name{gFileAttributeInfoListLookup}
\title{gFileAttributeInfoListLookup}
\description{Gets the file attribute with the name \code{name} from \code{list}.}
\usage{gFileAttributeInfoListLookup(object, name)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileAttributeInfoList}}.}
\item{\verb{name}}{the name of the attribute to lookup.}
}
\value{[\code{\link{GFileAttributeInfo}}] a \code{\link{GFileAttributeInfo}} for the \code{name}, or \code{NULL} if an
attribute isn't found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

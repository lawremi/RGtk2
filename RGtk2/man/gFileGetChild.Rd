\alias{gFileGetChild}
\name{gFileGetChild}
\title{gFileGetChild}
\description{Gets a child of \code{file} with basename equal to \code{name}.}
\usage{gFileGetChild(object, name)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{name}}{string containing the child's basename.}
}
\details{Note that the file with that specific name might not exist, but
you can still have a \code{\link{GFile}} that points to it. You can use this
for instance to create that file.
  
This call does no blocking i/o.}
\value{[\code{\link{GFile}}] a \code{\link{GFile}} to a child specified by \code{name}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

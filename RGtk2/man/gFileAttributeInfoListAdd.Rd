\alias{gFileAttributeInfoListAdd}
\name{gFileAttributeInfoListAdd}
\title{gFileAttributeInfoListAdd}
\description{Adds a new attribute with \code{name} to the \code{list}, setting
its \code{type} and \code{flags}.}
\usage{gFileAttributeInfoListAdd(object, name, type, flags = "G_FILE_ATTRIBUTE_INFO_NONE")}
\arguments{
\item{\verb{object}}{a \code{\link{GFileAttributeInfoList}}.}
\item{\verb{name}}{the name of the attribute to add.}
\item{\verb{type}}{the \code{\link{GFileAttributeType}} for the attribute.}
\item{\verb{flags}}{\code{\link{GFileAttributeInfoFlags}} for the attribute.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

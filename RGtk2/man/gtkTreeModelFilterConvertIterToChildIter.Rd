\alias{gtkTreeModelFilterConvertIterToChildIter}
\name{gtkTreeModelFilterConvertIterToChildIter}
\title{gtkTreeModelFilterConvertIterToChildIter}
\description{Sets \code{child.iter} to point to the row pointed to by \code{filter.iter}.}
\usage{gtkTreeModelFilterConvertIterToChildIter(object, filter.iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelFilter}}.}
\item{\verb{filter.iter}}{A valid \code{\link{GtkTreeIter}} pointing to a row on \code{filter}.}
}
\details{Since 2.4}
\value{
A list containing the following elements:
\item{\verb{child.iter}}{An uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

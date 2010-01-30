\alias{gtkTreeModelFilterConvertIterToChildIter}
\name{gtkTreeModelFilterConvertIterToChildIter}
\title{gtkTreeModelFilterConvertIterToChildIter}
\description{Sets \code{child.iter} to point to the row pointed to by \code{filter.iter}.}
\usage{gtkTreeModelFilterConvertIterToChildIter(object, filter.iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModelFilter}}]  A \verb{\link{GtkTreeModelFilter}}.}
\item{\verb{filter.iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}} pointing to a row on \code{filter}.}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{\verb{child.iter}}{[\verb{\link{GtkTreeIter}}]  An uninitialized \verb{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

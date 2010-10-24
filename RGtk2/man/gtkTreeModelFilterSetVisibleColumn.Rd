\alias{gtkTreeModelFilterSetVisibleColumn}
\name{gtkTreeModelFilterSetVisibleColumn}
\title{gtkTreeModelFilterSetVisibleColumn}
\description{Sets \code{column} of the child_model to be the column where \code{filter} should
look for visibility information. \code{columns} should be a column of type
\code{G_TYPE_BOOLEAN}, where \code{TRUE} means that a row is visible, and \code{FALSE}
if not.}
\usage{gtkTreeModelFilterSetVisibleColumn(object, column)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelFilter}}.}
\item{\verb{column}}{A \verb{integer} which is the column containing the visible information.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

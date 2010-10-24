\alias{gtkTreeViewColumnSetExpand}
\name{gtkTreeViewColumnSetExpand}
\title{gtkTreeViewColumnSetExpand}
\description{Sets the column to take available extra space.  This space is shared equally
amongst all columns that have the expand set to \code{TRUE}.  If no column has this
option set, then the last column gets all extra space.  By default, every
column is created with this \code{FALSE}.}
\usage{gtkTreeViewColumnSetExpand(object, expand)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}}
\item{\verb{expand}}{\code{TRUE} if the column should take available extra space, \code{FALSE} if not}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

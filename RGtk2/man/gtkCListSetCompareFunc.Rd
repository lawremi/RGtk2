\alias{gtkCListSetCompareFunc}
\name{gtkCListSetCompareFunc}
\title{gtkCListSetCompareFunc}
\description{
Sets the compare function of the \code{GtkClist} to \code{cmp.func}. If \code{cmp.func} is NULL,
then the default compare function is used. The default compare function sorts
ascending or with the type set by \code{\link{gtkCListSetSortType}} by the column set
by \code{\link{gtkCListSetSortColumn}}.
\strong{WARNING: \code{gtk_clist_set_compare_func} is deprecated and should not be used in newly-written code.  
Sets the compare function of the \code{GtkClist} to \code{cmp.func}. If \code{cmp.func} is NULL,
then the default compare function is used. The default compare function sorts
ascending or with the type set by \code{\link{gtkCListSetSortType}} by the column set
by \code{\link{gtkCListSetSortColumn}}.}
}
\usage{gtkCListSetCompareFunc(object, cmp.func)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{cmp.func}}{[GtkCListCompareFunc] The \code{GtkCompareFunction} to use.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

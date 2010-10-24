\alias{gtkCListSetCompareFunc}
\name{gtkCListSetCompareFunc}
\title{gtkCListSetCompareFunc}
\description{
Sets the compare function of the \verb{GtkClist} to \code{cmp.func}. If \code{cmp.func} is NULL,
then the default compare function is used. The default compare function sorts
ascending or with the type set by \code{\link{gtkCListSetSortType}} by the column set
by \code{\link{gtkCListSetSortColumn}}.
\strong{WARNING: \code{gtk_clist_set_compare_func} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetCompareFunc(object, cmp.func)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{cmp.func}}{The \verb{GtkCompareFunction} to use.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

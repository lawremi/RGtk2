\alias{gtkTreeViewSetRowSeparatorFunc}
\name{gtkTreeViewSetRowSeparatorFunc}
\title{gtkTreeViewSetRowSeparatorFunc}
\description{Sets the row separator function, which is used to determine
whether a row should be drawn as a separator. If the row separator
function is \code{NULL}, no separators are drawn. This is the default value.}
\usage{gtkTreeViewSetRowSeparatorFunc(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{func}}{[\verb{\link{GtkTreeViewRowSeparatorFunc}}]  a \verb{\link{GtkTreeViewRowSeparatorFunc}}}
\item{\verb{data}}{[R object]  user data to pass to \code{func}, or \code{NULL}}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

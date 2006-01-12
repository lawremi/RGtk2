\alias{gtkComboBoxSetRowSeparatorFunc}
\name{gtkComboBoxSetRowSeparatorFunc}
\title{gtkComboBoxSetRowSeparatorFunc}
\description{Sets the row separator function, which is used to determine
whether a row should be drawn as a separator. If the row separator
function is \code{NULL}, no separators are drawn. This is the default value.}
\usage{gtkComboBoxSetRowSeparatorFunc(object, func, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkComboBox}}]  a \code{\link{GtkComboBox}}}
\item{\code{func}}{[\code{\link{GtkTreeViewRowSeparatorFunc}}]  a \code{\link{GtkTreeViewRowSeparatorFunc}}}
\item{\code{data}}{[R object]  user data to pass to \code{func}, or \code{NULL}}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

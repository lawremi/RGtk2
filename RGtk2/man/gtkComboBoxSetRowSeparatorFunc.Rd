\alias{gtkComboBoxSetRowSeparatorFunc}
\name{gtkComboBoxSetRowSeparatorFunc}
\title{gtkComboBoxSetRowSeparatorFunc}
\description{Sets the row separator function, which is used to determine
whether a row should be drawn as a separator. If the row separator
function is \code{NULL}, no separators are drawn. This is the default value.}
\usage{gtkComboBoxSetRowSeparatorFunc(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkComboBox}}}
\item{\verb{func}}{a \code{\link{GtkTreeViewRowSeparatorFunc}}}
\item{\verb{data}}{user data to pass to \code{func}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

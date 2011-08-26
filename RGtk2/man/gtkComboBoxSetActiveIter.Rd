\alias{gtkComboBoxSetActiveIter}
\name{gtkComboBoxSetActiveIter}
\title{gtkComboBoxSetActiveIter}
\description{Sets the current active item to be the one referenced by \code{iter}, or
unsets the active item if \code{iter} is \code{NULL}.}
\usage{gtkComboBoxSetActiveIter(object, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkComboBox}}}
\item{\verb{iter}}{The \code{\link{GtkTreeIter}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{\code{iter} must correspond to a path of depth one, or be \code{NULL}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

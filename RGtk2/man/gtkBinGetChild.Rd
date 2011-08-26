\alias{gtkBinGetChild}
\name{gtkBinGetChild}
\title{gtkBinGetChild}
\description{Gets the child of the \code{\link{GtkBin}}, or \code{NULL} if the bin contains
no child widget. The returned widget does not have a reference
added, so you do not need to unref it.}
\usage{gtkBinGetChild(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkBin}}}}
\value{[\code{\link{GtkWidget}}] pointer to child of the \code{\link{GtkBin}}. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

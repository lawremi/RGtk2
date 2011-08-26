\alias{gtkRecentChooserGetItems}
\name{gtkRecentChooserGetItems}
\title{gtkRecentChooserGetItems}
\description{Gets the list of recently used resources in form of \code{\link{GtkRecentInfo}} objects.}
\usage{gtkRecentChooserGetItems(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRecentChooser}}}}
\details{The return value of this function is affected by the "sort-type" and
"limit" properties of \code{chooser}.
  Since 2.10}
\value{[list] A newly allocated
list of \code{\link{GtkRecentInfo}} objects.  You should
use \code{\link{gtkRecentInfoUnref}} on every item of the list, \emph{[  \acronym{element-type}   GtkRecentInfo][  \acronym{transfer full}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

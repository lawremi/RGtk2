\alias{gtkRecentManagerGetItems}
\name{gtkRecentManagerGetItems}
\title{gtkRecentManagerGetItems}
\description{Gets the list of recently used resources.}
\usage{gtkRecentManagerGetItems(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkRecentManager}}]  a \verb{\link{GtkRecentManager}}}}
\details{  Since  2.10}
\value{[list]  a list of newly allocated \verb{\link{GtkRecentInfo}} objects. Use
  \code{\link{gtkRecentInfoUnref}} on each item inside the list.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

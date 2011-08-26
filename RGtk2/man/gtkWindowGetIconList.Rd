\alias{gtkWindowGetIconList}
\name{gtkWindowGetIconList}
\title{gtkWindowGetIconList}
\description{Retrieves the list of icons set by \code{\link{gtkWindowSetIconList}}.
The list is copied, but the reference count on each
member won't be incremented.}
\usage{gtkWindowGetIconList(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\value{[list] copy of window's icon list. \emph{[  \acronym{element-type}   GdkPixbuf][  \acronym{transfer container}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

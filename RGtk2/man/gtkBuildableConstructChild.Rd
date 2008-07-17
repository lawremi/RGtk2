\alias{gtkBuildableConstructChild}
\name{gtkBuildableConstructChild}
\title{gtkBuildableConstructChild}
\description{Constructs a child of \code{buildable} with the name \code{name}. }
\usage{gtkBuildableConstructChild(object, builder, name)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuildable}}]  A \code{\link{GtkBuildable}}}
\item{\code{builder}}{[\code{\link{GtkBuilder}}] \code{\link{GtkBuilder}} used to construct this object}
\item{\code{name}}{[character]  name of child to construct}
}
\details{\code{\link{GtkBuilder}} calls this function if a "constructor" has been
specified in the UI definition.  

  Since  2.12}
\value{[\code{\link{GObject}}]  the constructed child}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

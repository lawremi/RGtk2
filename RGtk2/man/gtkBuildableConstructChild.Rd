\alias{gtkBuildableConstructChild}
\name{gtkBuildableConstructChild}
\title{gtkBuildableConstructChild}
\description{Constructs a child of \code{buildable} with the name \code{name}. }
\usage{gtkBuildableConstructChild(object, builder, name)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuildable}}]  A \verb{\link{GtkBuildable}}}
\item{\verb{builder}}{[\verb{\link{GtkBuilder}}] \verb{\link{GtkBuilder}} used to construct this object}
\item{\verb{name}}{[character]  name of child to construct}
}
\details{\verb{\link{GtkBuilder}} calls this function if a "constructor" has been
specified in the UI definition.  

  Since  2.12}
\value{[\verb{\link{GObject}}]  the constructed child}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

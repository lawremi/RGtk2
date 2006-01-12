\alias{gtkTargetListAddImageTargets}
\name{gtkTargetListAddImageTargets}
\title{gtkTargetListAddImageTargets}
\description{Appends the image targets supported by \code{GtkSelection} to
the target list. All targets are added with the same \code{info}.}
\usage{gtkTargetListAddImageTargets(list, info, writable)}
\arguments{
\item{\code{list}}{[\code{\link{GtkTargetList}}]  a \code{\link{GtkTargetList}}}
\item{\code{info}}{[numeric]  an ID that will be passed back to the application}
\item{\code{writable}}{[logical]  whether to add only targets for which GTK+ knows
  how to convert a pixbuf into the format}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

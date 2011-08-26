\alias{gtkTargetListAddImageTargets}
\name{gtkTargetListAddImageTargets}
\title{gtkTargetListAddImageTargets}
\description{Appends the image targets supported by \verb{GtkSelection} to
the target list. All targets are added with the same \code{info}.}
\usage{gtkTargetListAddImageTargets(list, info, writable)}
\arguments{
\item{\verb{list}}{a \code{\link{GtkTargetList}}}
\item{\verb{info}}{an ID that will be passed back to the application}
\item{\verb{writable}}{whether to add only targets for which GTK+ knows
how to convert a pixbuf into the format}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

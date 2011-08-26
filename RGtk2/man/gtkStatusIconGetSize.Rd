\alias{gtkStatusIconGetSize}
\name{gtkStatusIconGetSize}
\title{gtkStatusIconGetSize}
\description{Gets the size in pixels that is available for the image. 
Stock icons and named icons adapt their size automatically
if the size of the notification area changes. For other
storage types, the size-changed signal can be used to
react to size changes.}
\usage{gtkStatusIconGetSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}}
\details{Note that the returned size is only meaningful while the 
status icon is embedded (see \code{\link{gtkStatusIconIsEmbedded}}).
  Since 2.10}
\value{[integer] the size that is available for the image}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

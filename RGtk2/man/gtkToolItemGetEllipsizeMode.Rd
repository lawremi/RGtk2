\alias{gtkToolItemGetEllipsizeMode}
\name{gtkToolItemGetEllipsizeMode}
\title{gtkToolItemGetEllipsizeMode}
\description{Returns the ellipsize mode used for \code{tool.item}. Custom subclasses of
\code{\link{GtkToolItem}} should call this function to find out how text should
be ellipsized.}
\usage{gtkToolItemGetEllipsizeMode(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolItem}}}}
\details{Since 2.20}
\value{[\code{\link{PangoEllipsizeMode}}] a \code{\link{PangoEllipsizeMode}} indicating how text in \code{tool.item}
should be ellipsized.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkImageGetIconSet}
\name{gtkImageGetIconSet}
\title{gtkImageGetIconSet}
\description{Gets the icon set and size being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_ICON_SET} (see \code{\link{gtkImageGetStorageType}}).}
\usage{gtkImageGetIconSet(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkImage}}]  a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\code{icon.set}}{[\code{\link{GtkIconSet}}]  location to store a \code{\link{GtkIconSet}}}
\item{\code{size}}{[\code{\link{GtkIconSize}}]  location to store a stock icon size}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

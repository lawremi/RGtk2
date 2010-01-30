\alias{gtkImageGetIconName}
\name{gtkImageGetIconName}
\title{gtkImageGetIconName}
\description{Gets the icon name and size being displayed by the \verb{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_ICON_NAME} (see \code{\link{gtkImageGetStorageType}}).}
\usage{gtkImageGetIconName(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkImage}}]  a \verb{\link{GtkImage}}}}
\details{  Since  2.6}
\value{
A list containing the following elements:
\item{\verb{icon.name}}{[character]  place to store an icon name}
\item{\verb{size}}{[\code{\link{GtkIconSize}}]  place to store an icon size}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkEntryGetIconStorageType}
\name{gtkEntryGetIconStorageType}
\title{gtkEntryGetIconStorageType}
\description{Gets the type of representation being used by the icon
to store image data. If the icon has no image data,
the return value will be \code{GTK_IMAGE_EMPTY}.}
\usage{gtkEntryGetIconStorageType(object, icon.pos)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
}
\details{Since 2.16}
\value{[\code{\link{GtkImageType}}] image representation being used}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

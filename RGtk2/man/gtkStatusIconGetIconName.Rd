\alias{gtkStatusIconGetIconName}
\name{gtkStatusIconGetIconName}
\title{gtkStatusIconGetIconName}
\description{Gets the name of the icon being displayed by the \code{\link{GtkStatusIcon}}.
The storage type of the status icon must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_ICON_NAME} (see \code{\link{gtkStatusIconGetStorageType}}).}
\usage{gtkStatusIconGetIconName(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}}
\details{Since 2.10}
\value{[character] name of the displayed icon, or \code{NULL} if the image is empty.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

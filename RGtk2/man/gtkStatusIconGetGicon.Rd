\alias{gtkStatusIconGetGicon}
\name{gtkStatusIconGetGicon}
\title{gtkStatusIconGetGicon}
\description{Retrieves the \code{\link{GIcon}} being displayed by the \code{\link{GtkStatusIcon}}.
The storage type of the status icon must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_GICON} (see \code{\link{gtkStatusIconGetStorageType}}).
The caller of this function does not own a reference to the
returned \code{\link{GIcon}}.}
\usage{gtkStatusIconGetGicon(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}}
\details{If this function fails, \code{icon} is left unchanged;
  Since 2.14}
\value{[\code{\link{GIcon}}] the displayed icon, or \code{NULL} if the image is empty}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

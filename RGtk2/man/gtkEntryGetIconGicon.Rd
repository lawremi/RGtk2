\alias{gtkEntryGetIconGicon}
\name{gtkEntryGetIconGicon}
\title{gtkEntryGetIconGicon}
\description{Retrieves the \code{\link{GIcon}} used for the icon, or \code{NULL} if there is
no icon or if the icon was set by some other method (e.g., by
stock, pixbuf, or icon name).}
\usage{gtkEntryGetIconGicon(object, icon.pos)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
}
\details{Since 2.16}
\value{[\code{\link{GIcon}}] A \code{\link{GIcon}}, or \code{NULL} if no icon is set or if the icon
is not a \code{\link{GIcon}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

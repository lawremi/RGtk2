\alias{gtkEntryGetIconName}
\name{gtkEntryGetIconName}
\title{gtkEntryGetIconName}
\description{Retrieves the icon name used for the icon, or \code{NULL} if there is
no icon or if the icon was set by some other method (e.g., by
pixbuf, stock or gicon).}
\usage{gtkEntryGetIconName(object, icon.pos)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
}
\details{Since 2.16}
\value{[character] An icon name, or \code{NULL} if no icon is set or if the icon
wasn't set from an icon name}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

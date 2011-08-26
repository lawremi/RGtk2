\alias{gtkEntryGetIconPixbuf}
\name{gtkEntryGetIconPixbuf}
\title{gtkEntryGetIconPixbuf}
\description{Retrieves the image used for the icon.}
\usage{gtkEntryGetIconPixbuf(object, icon.pos)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
}
\details{Unlike the other methods of setting and getting icon data, this
method will work regardless of whether the icon was set using a
\code{\link{GdkPixbuf}}, a \code{\link{GIcon}}, a stock item, or an icon name.
  Since 2.16}
\value{[\code{\link{GdkPixbuf}}] A \code{\link{GdkPixbuf}}, or \code{NULL} if no icon is set for this position.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

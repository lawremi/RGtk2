\alias{gtkDragSetIconName}
\name{gtkDragSetIconName}
\title{gtkDragSetIconName}
\description{Sets the icon for a given drag from a named themed icon. See
the docs for \code{\link{GtkIconTheme}} for more details. Note that the
size of the icon depends on the icon theme (the icon is
loaded at the symbolic size \verb{GTK_ICON_SIZE_DND}), thus 
\code{hot.x} and \code{hot.y} have to be used with care.}
\usage{gtkDragSetIconName(object, icon.name, hot.x, hot.y)}
\arguments{
\item{\verb{object}}{the context for a drag. (This must be called
with a context for the source side of a drag)}
\item{\verb{icon.name}}{name of icon to use}
\item{\verb{hot.x}}{the X offset of the hotspot within the icon}
\item{\verb{hot.y}}{the Y offset of the hotspot within the icon}
}
\details{Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

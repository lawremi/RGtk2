\alias{gtkIconSizeLookup}
\name{gtkIconSizeLookup}
\title{gtkIconSizeLookup}
\description{Obtains the pixel size of a semantic icon size, possibly
modified by user preferences for the default \code{\link{GtkSettings}}.
(See \code{\link{gtkIconSizeLookupForSettings}}.)
Normally \code{size} would be
\code{GTK_ICON_SIZE_MENU}, \code{GTK_ICON_SIZE_BUTTON}, etc.  This function
isn't normally needed, \code{\link{gtkWidgetRenderIcon}} is the usual
way to get an icon for rendering, then just look at the size of
the rendered pixbuf. The rendered pixbuf may not even correspond to
the width/height returned by \code{\link{gtkIconSizeLookup}}, because themes
are free to render the pixbuf however they like, including changing
the usual size.}
\usage{gtkIconSizeLookup(size)}
\arguments{\item{\code{size}}{[\code{\link{GtkIconSize}}]  an icon size}}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if \code{size} was a valid size}
\item{\code{width}}{[integer]  location to store icon width}
\item{\code{height}}{[integer]  location to store icon height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

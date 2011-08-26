\alias{gtkImageNewFromIconSet}
\name{gtkImageNewFromIconSet}
\title{gtkImageNewFromIconSet}
\description{Creates a \code{\link{GtkImage}} displaying an icon set. Sample stock sizes are
\verb{GTK_ICON_SIZE_MENU}, \verb{GTK_ICON_SIZE_SMALL_TOOLBAR}. Instead of using
this function, usually it's better to create a \code{\link{GtkIconFactory}}, put
your icon sets in the icon factory, add the icon factory to the
list of default factories with \code{\link{gtkIconFactoryAddDefault}}, and
then use \code{\link{gtkImageNewFromStock}}. This will allow themes to
override the icon you ship with your application.}
\usage{gtkImageNewFromIconSet(icon.set, size, show = TRUE)}
\arguments{
\item{\verb{icon.set}}{a \code{\link{GtkIconSet}}}
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{type}   int]}}
}
\details{The \code{\link{GtkImage}} does not assume a reference to the
icon set; you still need to unref it if you own references.
\code{\link{GtkImage}} will add its own reference rather than adopting yours.}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkImage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

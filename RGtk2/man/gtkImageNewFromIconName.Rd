\alias{gtkImageNewFromIconName}
\name{gtkImageNewFromIconName}
\title{gtkImageNewFromIconName}
\description{Creates a \verb{\link{GtkImage}} displaying an icon from the current icon theme.
If the icon name isn't known, a "broken image" icon will be
displayed instead.  If the current icon theme is changed, the icon
will be updated appropriately.}
\usage{gtkImageNewFromIconName(icon.name, size)}
\arguments{
\item{\verb{icon.name}}{[character]  an icon name}
\item{\verb{size}}{[\code{\link{GtkIconSize}}]  a stock icon size}
}
\details{  Since  2.6}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImage}} displaying the themed icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

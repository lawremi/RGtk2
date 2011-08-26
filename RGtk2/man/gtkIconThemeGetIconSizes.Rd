\alias{gtkIconThemeGetIconSizes}
\name{gtkIconThemeGetIconSizes}
\title{gtkIconThemeGetIconSizes}
\description{Returns a list of integers describing the sizes at which
the icon is available without scaling. A size of -1 means 
that the icon is available in a scalable format. The list 
is zero-terminated.}
\usage{gtkIconThemeGetIconSizes(object, icon.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{icon.name}}{the name of an icon}
}
\details{Since 2.6}
\value{[integer] An newly allocated list describing the sizes at
which the icon is available.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

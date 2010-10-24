\alias{gtkIconThemeGetSearchPath}
\name{gtkIconThemeGetSearchPath}
\title{gtkIconThemeGetSearchPath}
\description{Gets the current search path. See \code{\link{gtkIconThemeSetSearchPath}}.}
\usage{gtkIconThemeGetSearchPath(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconTheme}}}}
\details{Since 2.4}
\value{
A list containing the following elements:
\item{\verb{path}}{ location to store a list of icon theme path directories or \code{NULL}
       The stored value should be freed with \code{gStrfreev()}. \emph{[  \acronym{allow-none}  ][  \acronym{out}  ]}}
\item{\verb{n.elements}}{location to store number of elements
             in \code{path}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

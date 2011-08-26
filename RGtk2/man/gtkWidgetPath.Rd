\alias{gtkWidgetPath}
\name{gtkWidgetPath}
\title{gtkWidgetPath}
\description{Obtains the full path to \code{widget}. The path is simply the name of a
widget and all its parents in the container hierarchy, separated by
periods. The name of a widget comes from
\code{\link{gtkWidgetGetName}}. Paths are used to apply styles to a widget
in gtkrc configuration files. Widget names are the type of the
widget by default (e.g. "GtkButton") or can be set to an
application-specific value with \code{\link{gtkWidgetSetName}}. By setting
the name of a widget, you allow users or theme authors to apply
styles to that specific widget in their gtkrc
file. \code{path.reversed.p} fills in the path in reverse order,
i.e. starting with \code{widget}'s name instead of starting with the name
of \code{widget}'s outermost ancestor.}
\usage{gtkWidgetPath(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\value{
A list containing the following elements:
\item{\verb{path.length}}{location to store length of the path, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{path}}{location to store allocated path string, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{path.reversed}}{location to store allocated reverse path string, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

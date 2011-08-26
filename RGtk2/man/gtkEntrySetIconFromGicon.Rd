\alias{gtkEntrySetIconFromGicon}
\name{gtkEntrySetIconFromGicon}
\title{gtkEntrySetIconFromGicon}
\description{Sets the icon shown in the entry at the specified position
from the current icon theme.
If the icon isn't known, a "broken image" icon will be displayed
instead.}
\usage{gtkEntrySetIconFromGicon(object, icon.pos, icon = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{The position at which to set the icon}
\item{\verb{icon}}{The icon to set, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If \code{icon} is \code{NULL}, no icon will be shown in the specified position.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

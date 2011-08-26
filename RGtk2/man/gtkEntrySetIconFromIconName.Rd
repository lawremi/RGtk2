\alias{gtkEntrySetIconFromIconName}
\name{gtkEntrySetIconFromIconName}
\title{gtkEntrySetIconFromIconName}
\description{Sets the icon shown in the entry at the specified position
from the current icon theme.}
\usage{gtkEntrySetIconFromIconName(object, icon.pos, icon.name = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{The position at which to set the icon}
\item{\verb{icon.name}}{An icon name, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If the icon name isn't known, a "broken image" icon will be displayed
instead.
  
If \code{icon.name} is \code{NULL}, no icon will be shown in the specified position.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

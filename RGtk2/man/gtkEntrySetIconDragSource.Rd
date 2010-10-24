\alias{gtkEntrySetIconDragSource}
\name{gtkEntrySetIconDragSource}
\title{gtkEntrySetIconDragSource}
\description{Sets up the icon at the given position so that GTK+ will start a drag
operation when the user clicks and drags the icon.}
\usage{gtkEntrySetIconDragSource(object, icon.pos, target.list, actions)}
\arguments{
\item{\verb{object}}{a \verb{GtkIconEntry}}
\item{\verb{icon.pos}}{icon position}
\item{\verb{target.list}}{the targets (data formats) in which the data can be provided}
\item{\verb{actions}}{a bitmask of the allowed drag actions}
}
\details{To handle the drag operation, you need to connect to the usual
\verb{"drag-data-get"} (or possibly \verb{"drag-data-delete"})
signal, and use \code{\link{gtkEntryGetCurrentIconDragSource}} in
your signal handler to find out if the drag was started from
an icon.
  
By default, GTK+ uses the icon as the drag icon. You can use the 
\verb{"drag-begin"} signal to set a different icon. Note that you 
have to use \code{gSignalConnectAfter()} to ensure that your signal handler
gets executed after the default handler.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkClipboardGetOwner}
\name{gtkClipboardGetOwner}
\title{gtkClipboardGetOwner}
\description{If the clipboard contents callbacks were set with 
\code{\link{gtkClipboardSetWithOwner}}, and the \code{\link{gtkClipboardSetWithData}} or 
\code{\link{gtkClipboardClear}} has not subsequently called, returns the owner set 
by \code{\link{gtkClipboardSetWithOwner}}.}
\usage{gtkClipboardGetOwner(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkClipboard}}]  a \verb{\link{GtkClipboard}}}}
\value{[\verb{\link{GObject}}]  the owner of the clipboard, if any; otherwise \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

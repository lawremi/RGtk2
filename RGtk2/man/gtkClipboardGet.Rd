\alias{gtkClipboardGet}
\name{gtkClipboardGet}
\title{gtkClipboardGet}
\description{Returns the clipboard object for the given selection.
See \code{\link{gtkClipboardGetForDisplay}} for complete details.}
\usage{gtkClipboardGet(selection = "GDK_SELECTION_CLIPBOARD")}
\arguments{\item{\verb{selection}}{a \code{\link{GdkAtom}} which identifies the clipboard to use}}
\value{[\code{\link{GtkClipboard}}] the appropriate clipboard object. If no clipboard
already exists, a new one will be created. Once a clipboard
object has been created, it is persistent and, \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkClipboardGetForDisplay}
\name{gtkClipboardGetForDisplay}
\title{gtkClipboardGetForDisplay}
\description{Returns the clipboard object for the given selection.
Cut/copy/paste menu items and keyboard shortcuts should use
the default clipboard, returned by passing \code{GDK_SELECTION_CLIPBOARD} for \code{selection}.
(\code{GDK_NONE} is supported as a synonym for GDK_SELECTION_CLIPBOARD
for backwards compatibility reasons.)
The currently-selected object or text should be provided on the clipboard
identified by \verb{GDK_SELECTION_PRIMARY}. Cut/copy/paste menu items
conceptually copy the contents of the \verb{GDK_SELECTION_PRIMARY} clipboard
to the default clipboard, i.e. they copy the selection to what the
user sees as the clipboard.}
\usage{gtkClipboardGetForDisplay(display, selection = "GDK_SELECTION_CLIPBOARD")}
\arguments{
\item{\verb{display}}{the display for which the clipboard is to be retrieved or created}
\item{\verb{selection}}{a \code{\link{GdkAtom}} which identifies the clipboard
to use.}
}
\details{(Passing \verb{GDK_NONE} is the same as using \code{gdk_atom_intern
("CLIPBOARD", FALSE)}. See 
http://www.freedesktop.org/Standards/clipboards-spec (\url{http://www.freedesktop.org/Standards/clipboards-spec})
for a detailed discussion of the "CLIPBOARD" vs. "PRIMARY"
selections under the X window system. On Win32 the
\verb{GDK_SELECTION_PRIMARY} clipboard is essentially ignored.)
  
It's possible to have arbitrary named clipboards; if you do invent
new clipboards, you should prefix the selection name with an
underscore (because the ICCCM requires that nonstandard atoms are
underscore-prefixed), and namespace it as well. For example,
if your application called "Foo" has a special-purpose
clipboard, you might call it "_FOO_SPECIAL_CLIPBOARD".
  Since 2.2}
\value{[\code{\link{GtkClipboard}}] the appropriate clipboard object. If no
clipboard already exists, a new one will
be created. Once a clipboard object has
been created, it is persistent and, \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

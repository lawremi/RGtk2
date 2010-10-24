\alias{gtkMenuShellSetTakeFocus}
\name{gtkMenuShellSetTakeFocus}
\title{gtkMenuShellSetTakeFocus}
\description{If \code{take.focus} is \code{TRUE} (the default) the menu shell will take the keyboard 
focus so that it will receive all keyboard events which is needed to enable
keyboard navigation in menus.}
\usage{gtkMenuShellSetTakeFocus(object, take.focus)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenuShell}}}
\item{\verb{take.focus}}{\code{TRUE} if the menu shell should take the keyboard focus on popup.}
}
\details{Setting \code{take.focus} to \code{FALSE} is useful only for special applications
like virtual keyboard implementations which should not take keyboard
focus.
  
The \code{take.focus} state of a menu or menu bar is automatically propagated
to submenus whenever a submenu is popped up, so you don't have to worry
about recursively setting it for your entire menu hierarchy. Only when
programmatically picking a submenu and popping it up manually, the
\code{take.focus} property of the submenu needs to be set explicitely.
  
Note that setting it to \code{FALSE} has side-effects:
  
If the focus is in some other app, it keeps the focus and keynav in
the menu doesn't work. Consequently,
  
To avoid confusing the user, menus with \code{take.focus} set to \code{FALSE}
should not display mnemonics or accelerators, since it cannot be
guaranteed that they will work.
  
See also \code{\link{gdkKeyboardGrab}}
  Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

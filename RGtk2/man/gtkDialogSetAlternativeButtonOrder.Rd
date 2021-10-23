\alias{gtkDialogSetAlternativeButtonOrder}
\name{gtkDialogSetAlternativeButtonOrder}
\title{gtkDialogSetAlternativeButtonOrder}
\description{Sets an alternative button order. If the 
\verb{"gtk-alternative-button-order"} setting is set to \code{TRUE}, 
the dialog buttons are reordered according to the order of the 
response ids passed to this function.}
\usage{gtkDialogSetAlternativeButtonOrder(object, ...)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkDialog}}}
\item{\verb{...}}{\emph{undocumented
}}
}
\details{By default, GTK+ dialogs use the button order advocated by the Gnome 
Human 
Interface Guidelines (\url{https://developer-old.gnome.org/hig/stable/}) with the affirmative button at the far 
right, and the cancel button left of it. But the builtin GTK+ dialogs
and \code{\link{GtkMessageDialog}}s do provide an alternative button order,
which is more suitable on some platforms, e.g. Windows.
  
Use this function after adding all the buttons to your dialog, as the 
following example shows:
\preformatted{
cancel_button <- dialog$addButton("gtk-cancel", "cancel")
 
ok_button <- dialog$addButton("gtk-ok", "ok")
ok_button$grabDefault()
  
help_button <- dialog$addButton("gtk-help", "help")

dialog$setAlternativeButtonOrder("ok", "cancel", "help")
}
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

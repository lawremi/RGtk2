\alias{gtkLabelSetMnemonicWidget}
\name{gtkLabelSetMnemonicWidget}
\title{gtkLabelSetMnemonicWidget}
\description{If the label has been set so that it has an mnemonic key (using
i.e.  \code{\link{gtkLabelSetMarkupWithMnemonic}},
\code{\link{gtkLabelSetTextWithMnemonic}}, \code{\link{gtkLabelNewWithMnemonic}}
or the "use\_underline" property) the label can be associated with a
widget that is the target of the mnemonic. When the label is inside
a widget (like a \code{\link{GtkButton}} or a \code{\link{GtkNotebook}} tab) it is
automatically associated with the correct widget, but sometimes
(i.e. when the target is a \code{\link{GtkEntry}} next to the label) you need to
set it explicitly using this function.}
\usage{gtkLabelSetMnemonicWidget(object, widget)}
\arguments{
\item{\code{object}}{[\code{\link{GtkLabel}}]  a \code{\link{GtkLabel}}}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the target \code{\link{GtkWidget}} }
}
\details{The target widget will be accelerated by emitting "mnemonic\_activate" on it.
The default handler for this signal will activate the widget if there are no
mnemonic collisions and toggle focus between the colliding widgets otherwise.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

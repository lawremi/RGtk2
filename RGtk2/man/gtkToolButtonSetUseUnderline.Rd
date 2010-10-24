\alias{gtkToolButtonSetUseUnderline}
\name{gtkToolButtonSetUseUnderline}
\title{gtkToolButtonSetUseUnderline}
\description{If set, an underline in the label property indicates that the next character
should be used for the mnemonic accelerator key in the overflow menu. For
example, if the label property is "_Open" and \code{use.underline} is \code{TRUE},
the label on the tool button will be "Open" and the item on the overflow
menu will have an underlined 'O'.}
\usage{gtkToolButtonSetUseUnderline(object, use.underline)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolButton}}}
\item{\verb{use.underline}}{whether the button label has the form "_Open"}
}
\details{Labels shown on tool buttons never have mnemonics on them; this property
only affects the menu item on the overflow menu.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

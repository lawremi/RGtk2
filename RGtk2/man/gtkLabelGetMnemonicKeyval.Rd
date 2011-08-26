\alias{gtkLabelGetMnemonicKeyval}
\name{gtkLabelGetMnemonicKeyval}
\title{gtkLabelGetMnemonicKeyval}
\description{If the label has been set so that it has an mnemonic key this function
returns the keyval used for the mnemonic accelerator. If there is no
mnemonic set up it returns \verb{GDK_VoidSymbol}.}
\usage{gtkLabelGetMnemonicKeyval(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLabel}}}}
\value{[numeric] GDK keyval usable for accelerators, or \verb{GDK_VoidSymbol}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

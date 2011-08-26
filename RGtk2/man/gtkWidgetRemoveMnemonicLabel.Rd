\alias{gtkWidgetRemoveMnemonicLabel}
\name{gtkWidgetRemoveMnemonicLabel}
\title{gtkWidgetRemoveMnemonicLabel}
\description{Removes a widget from the list of mnemonic labels for
this widget. (See \code{\link{gtkWidgetListMnemonicLabels}}). The widget
must have previously been added to the list with
\code{\link{gtkWidgetAddMnemonicLabel}}.}
\usage{gtkWidgetRemoveMnemonicLabel(object, label)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{label}}{a \code{\link{GtkWidget}} that was previously set as a mnemnic label for
\code{widget} with \code{\link{gtkWidgetAddMnemonicLabel}}.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

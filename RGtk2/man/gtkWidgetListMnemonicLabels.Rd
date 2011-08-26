\alias{gtkWidgetListMnemonicLabels}
\name{gtkWidgetListMnemonicLabels}
\title{gtkWidgetListMnemonicLabels}
\description{Returns a newly allocated list of the widgets, normally labels, for 
which this widget is a the target of a mnemonic (see for example, 
\code{\link{gtkLabelSetMnemonicWidget}}).}
\usage{gtkWidgetListMnemonicLabels(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{The widgets in the list are not individually referenced. If you
want to iterate through the list and perform actions involving
callbacks that might destroy the widgets, you
\emph{must} call \code{g_list_foreach (result,
(GFunc)g_object_ref, NULL)} first, and then unref all the
widgets afterwards.
  Since 2.4}
\value{[list]  \emph{[  \acronym{element-type}   GtkWidget][  \acronym{transfer container}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkComboBoxNewText}
\name{gtkComboBoxNewText}
\title{gtkComboBoxNewText}
\description{Convenience function which constructs a new text combo box, which is a
\code{\link{GtkComboBox}} just displaying strings. If you use this function to create
a text combo box, you should only manipulate its data source with the
following convenience functions: \code{\link{gtkComboBoxAppendText}},
\code{\link{gtkComboBoxInsertText}}, \code{\link{gtkComboBoxPrependText}} and
\code{\link{gtkComboBoxRemoveText}}.}
\usage{gtkComboBoxNewText(show = TRUE)}
\details{Since 2.4}
\value{[\code{\link{GtkWidget}}] A new text combo box. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

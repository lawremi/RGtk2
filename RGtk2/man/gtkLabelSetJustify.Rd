\alias{gtkLabelSetJustify}
\name{gtkLabelSetJustify}
\title{gtkLabelSetJustify}
\description{Sets the alignment of the lines in the text of the label relative to
each other. \code{GTK_JUSTIFY_LEFT} is the default value when the
widget is first created with \code{\link{gtkLabelNew}}. If you instead want
to set the alignment of the label as a whole, use
\code{\link{gtkMiscSetAlignment}} instead. \code{\link{gtkLabelSetJustify}} has no
effect on labels containing only a single line.}
\usage{gtkLabelSetJustify(object, jtype)}
\arguments{
\item{\code{object}}{[\code{\link{GtkLabel}}]  a \code{\link{GtkLabel}}}
\item{\code{jtype}}{[\code{\link{GtkJustification}}]  a \code{\link{GtkJustification}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

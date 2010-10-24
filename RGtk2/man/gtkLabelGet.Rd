\alias{gtkLabelGet}
\name{gtkLabelGet}
\title{gtkLabelGet}
\description{
Gets the current string of text within the \code{\link{GtkLabel}} and writes it to
the given \code{str} argument.  It does not make a copy of this string so you
must not write to it.
\strong{WARNING: \code{gtk_label_get} is deprecated and should not be used in newly-written code. Use \code{\link{gtkLabelGetText}} instead.}
}
\usage{gtkLabelGet(object)}
\arguments{\item{\verb{object}}{The \code{\link{GtkLabel}} widget you want to get the text from.}}
\value{
A list containing the following elements:
\item{\verb{str}}{The reference to the pointer you want to point to the text.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

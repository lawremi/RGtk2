\alias{gtkMessageDialogFormatSecondaryText}
\name{gtkMessageDialogFormatSecondaryText}
\title{gtkMessageDialogFormatSecondaryText}
\description{Sets the secondary text of the message dialog to be \code{message.format} 
(with \code{printf()}-style).}
\usage{gtkMessageDialogFormatSecondaryText(object, ...)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMessageDialog}}}
\item{\verb{...}}{arguments for \code{message.format}}
}
\details{Note that setting a secondary text makes the primary text become
bold, unless you have provided explicit markup.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

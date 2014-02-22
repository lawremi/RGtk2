\alias{gtkMessageDialogFormatSecondaryMarkup}
\name{gtkMessageDialogFormatSecondaryMarkup}
\title{gtkMessageDialogFormatSecondaryMarkup}
\description{Sets the secondary text of the message dialog to be \code{message.format} (with 
\code{printf()}-style), which is marked up with the 
Pango text markup language.}
\usage{gtkMessageDialogFormatSecondaryMarkup(object, ...)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMessageDialog}}}
\item{\verb{...}}{\emph{undocumented
}}
}
\details{Note that setting a secondary text makes the primary text become
bold, unless you have provided explicit markup.
  
Due to an oversight, this function does not escape special XML characters
like \code{\link{gtkMessageDialogNewWithMarkup}} does. Thus, if the arguments 
may contain special XML characters, you should use \code{gMarkupPrintfEscaped()}
to escape it.
  \preformatted{# GMarkup is not yet supported in RGtk2}  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

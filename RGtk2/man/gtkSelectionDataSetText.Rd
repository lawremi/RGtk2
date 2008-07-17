\alias{gtkSelectionDataSetText}
\name{gtkSelectionDataSetText}
\title{gtkSelectionDataSetText}
\description{Sets the contents of the selection from a UTF-8 encoded string.
The string is converted to the form determined by
\code{selection.data->target}.}
\usage{gtkSelectionDataSetText(object, str, len = -1)}
\arguments{
\item{\code{object}}{[\code{\link{GtkSelectionData}}]  a \code{\link{GtkSelectionData}}}
\item{\code{str}}{[character]  a UTF-8 string}
\item{\code{len}}{[integer]  the length of \code{str}, or -1 if \code{str} is nul-terminated.}
}
\value{[logical] \code{TRUE} if the selection was successfully set,
  otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

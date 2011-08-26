\alias{gtkSelectionDataSetUris}
\name{gtkSelectionDataSetUris}
\title{gtkSelectionDataSetUris}
\description{Sets the contents of the selection from a list of URIs.
The string is converted to the form determined by
\code{selection.data->target}.}
\usage{gtkSelectionDataSetUris(object, uris)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkSelectionData}}}
\item{\verb{uris}}{a list of strings holding URIs}
}
\details{Since 2.6}
\value{[logical] \code{TRUE} if the selection was successfully set,
otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

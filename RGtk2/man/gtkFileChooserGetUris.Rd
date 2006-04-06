\alias{gtkFileChooserGetUris}
\name{gtkFileChooserGetUris}
\title{gtkFileChooserGetUris}
\description{Lists all the selected files and subfolders in the current folder of
\code{chooser}. The returned names are full absolute URIs.}
\usage{gtkFileChooserGetUris(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}}
\details{  Since  2.4}
\value{[list]  a \code{list} containing the URIs of all selected
  files and subfolders in the current folder. Free the returned list
  with \code{g\Slist\Free()}, and the filenames with \code{g\Free()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

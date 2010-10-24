\alias{gtkFileChooserSetLocalOnly}
\name{gtkFileChooserSetLocalOnly}
\title{gtkFileChooserSetLocalOnly}
\description{Sets whether only local files can be selected in the
file selector. If \code{local.only} is \code{TRUE} (the default),
then the selected file are files are guaranteed to be
accessible through the operating systems native file
file system and therefore the application only
needs to worry about the filename functions in
\code{\link{GtkFileChooser}}, like \code{\link{gtkFileChooserGetFilename}},
rather than the URI functions like
\code{\link{gtkFileChooserGetUri}},}
\usage{gtkFileChooserSetLocalOnly(object, local.only)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{local.only}}{\code{TRUE} if only local files can be selected}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

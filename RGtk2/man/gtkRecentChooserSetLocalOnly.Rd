\alias{gtkRecentChooserSetLocalOnly}
\name{gtkRecentChooserSetLocalOnly}
\title{gtkRecentChooserSetLocalOnly}
\description{Sets whether only local resources, that is resources using the file:// URI
scheme, should be shown in the recently used resources selector.  If
\code{local.only} is \code{TRUE} (the default) then the shown resources are guaranteed
to be accessible through the operating system native file system.}
\usage{gtkRecentChooserSetLocalOnly(object, local.only)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentChooser}}}
\item{\verb{local.only}}{\code{TRUE} if only local files can be shown}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

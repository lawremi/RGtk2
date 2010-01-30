\alias{gtkAboutDialogSetUrlHook}
\name{gtkAboutDialogSetUrlHook}
\title{gtkAboutDialogSetUrlHook}
\description{Installs a global function to be called whenever the user activates a
URL link in an about dialog.}
\usage{gtkAboutDialogSetUrlHook(func, data = NULL)}
\arguments{
\item{\verb{func}}{[\verb{\link{GtkAboutDialogActivateLinkFunc}}]  a function to call when a URL link is activated.}
\item{\verb{data}}{[R object]  data to pass to \code{func}}
}
\details{  Since  2.6}
\value{[\verb{\link{GtkAboutDialogActivateLinkFunc}}]  the previous URL hook.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

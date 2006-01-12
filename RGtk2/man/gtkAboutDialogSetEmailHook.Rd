\alias{gtkAboutDialogSetEmailHook}
\name{gtkAboutDialogSetEmailHook}
\title{gtkAboutDialogSetEmailHook}
\description{Installs a global function to be called whenever the user activates an
email link in an about dialog.}
\usage{gtkAboutDialogSetEmailHook(func, data = NULL)}
\arguments{
\item{\code{func}}{[\code{\link{GtkAboutDialogActivateLinkFunc}}]  a function to call when an email link is activated.}
\item{\code{data}}{[R object]  data to pass to \code{func}}
}
\details{  Since  2.6}
\value{[\code{\link{GtkAboutDialogActivateLinkFunc}}]  the previous email hook.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

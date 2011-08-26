\alias{gtkAboutDialogSetUrlHook}
\name{gtkAboutDialogSetUrlHook}
\title{gtkAboutDialogSetUrlHook}
\description{Installs a global function to be called whenever the user activates a
URL link in an about dialog.}
\usage{gtkAboutDialogSetUrlHook(func, data = NULL)}
\arguments{
\item{\verb{func}}{a function to call when a URL link is activated.}
\item{\verb{data}}{data to pass to \code{func}}
}
\details{Since 2.18 there exists a default function which uses \code{\link{gtkShowUri}}. To
deactivate it, you can pass \code{NULL} for \code{func}.
  Since 2.6}
\value{[\code{\link{GtkAboutDialogActivateLinkFunc}}] the previous URL hook.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

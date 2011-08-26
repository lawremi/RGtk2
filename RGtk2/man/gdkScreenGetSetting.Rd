\alias{gdkScreenGetSetting}
\name{gdkScreenGetSetting}
\title{gdkScreenGetSetting}
\description{Retrieves a desktop-wide setting such as double-click time
for the \code{\link{GdkScreen}} \code{screen}. }
\usage{gdkScreenGetSetting(object, name)}
\arguments{
\item{\verb{object}}{the \code{\link{GdkScreen}} where the setting is located}
\item{\verb{name}}{the name of the setting}
}
\details{FIXME needs a list of valid settings here, or a link to 
more information.
  Since 2.2}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the setting existed and a value was stored
in \code{value}, \code{FALSE} otherwise.}
\item{\verb{value}}{location to store the value of the setting}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

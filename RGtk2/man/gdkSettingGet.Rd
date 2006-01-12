\alias{gdkSettingGet}
\name{gdkSettingGet}
\title{gdkSettingGet}
\description{Obtains a desktop-wide setting, such as the double-click time,
for the default screen. See \code{\link{gdkScreenGetSetting}}.}
\usage{gdkSettingGet(name)}
\arguments{\item{\code{name}}{[character]  the name of the setting.}}
\value{
A list containing the following elements:
\item{retval}{[logical] : \code{TRUE} if the setting existed and a value was stored
  in \code{value}, \code{FALSE} otherwise.}
\item{\code{value}}{[R object]  location to store the value of the setting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

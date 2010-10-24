\alias{gdkWindowGetUserData}
\name{gdkWindowGetUserData}
\title{gdkWindowGetUserData}
\description{Retrieves the user data for \code{window}, which is normally the widget
that \code{window} belongs to. See \code{\link{gdkWindowSetUserData}}.}
\usage{gdkWindowGetUserData(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\value{
A list containing the following elements:
\item{\verb{user.data}}{return location for user data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

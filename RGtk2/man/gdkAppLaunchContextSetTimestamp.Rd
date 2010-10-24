\alias{gdkAppLaunchContextSetTimestamp}
\name{gdkAppLaunchContextSetTimestamp}
\title{gdkAppLaunchContextSetTimestamp}
\description{Sets the timestamp of \code{context}. The timestamp should ideally
be taken from the event that triggered the launch. }
\usage{gdkAppLaunchContextSetTimestamp(object, timestamp)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkAppLaunchContext}}}
\item{\verb{timestamp}}{a timestamp}
}
\details{Window managers can use this information to avoid moving the
focus to the newly launched application when the user is busy
typing in another window. This is also known as 'focus stealing
prevention'.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkWindowSetUserData}
\name{gdkWindowSetUserData}
\title{gdkWindowSetUserData}
\description{For most purposes this function is deprecated in favor of
\code{\link{gObjectSetData}}. However, for historical reasons GTK+ stores
the \code{\link{GtkWidget}} that owns a \code{\link{GdkWindow}} as user data on the
\code{\link{GdkWindow}}. So, custom widget implementations should use
this function for that. If GTK+ receives an event for a \code{\link{GdkWindow}},
and the user data for the window is non-\code{NULL}, GTK+ will assume the
user data is a \code{\link{GtkWidget}}, and forward the event to that widget.}
\usage{gdkWindowSetUserData(object, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{user.data}}{user data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

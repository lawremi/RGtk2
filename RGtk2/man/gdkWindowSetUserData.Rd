\alias{gdkWindowSetUserData}
\name{gdkWindowSetUserData}
\title{gdkWindowSetUserData}
\description{For most purposes this function is deprecated in favor of
\code{\link{gObjectSetData}}. However, for historical reasons GTK+ stores
the \verb{\link{GtkWidget}} that owns a \verb{\link{GdkWindow}} as user data on the
\verb{\link{GdkWindow}}. So, custom widget implementations should use
this function for that. If GTK+ receives an event for a \verb{\link{GdkWindow}},
and the user data for the window is non-\code{NULL}, GTK+ will assume the
user data is a \verb{\link{GtkWidget}}, and forward the event to that widget.}
\usage{gdkWindowSetUserData(object, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{user.data}}{[R object]  user data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

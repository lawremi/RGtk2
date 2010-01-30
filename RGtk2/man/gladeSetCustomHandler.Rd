\alias{gladeSetCustomHandler}
\name{gladeSetCustomHandler}
\title{gladeSetCustomHandler}
\description{Calling this function allows you to override the default behaviour
when a Custom widget is found in an interface.  This could be used by
a language binding to call some other function, or to limit what
functions can be called to create custom widgets.}
\usage{gladeSetCustomHandler(handler, user.data)}
\arguments{
\item{\verb{handler}}{[\verb{\link{GladeXMLCustomWidgetHandler}}]  the custom widget handler}
\item{\verb{user.data}}{[R object]  user data passed to the custom handler}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

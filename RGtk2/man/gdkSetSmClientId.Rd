\alias{gdkSetSmClientId}
\name{gdkSetSmClientId}
\title{gdkSetSmClientId}
\description{Sets the \code{SM_CLIENT_ID} property on the application's leader window so that
the window manager can save the application's state using the X11R6 ICCCM
session management protocol.}
\usage{gdkSetSmClientId(sm.client.id)}
\arguments{\item{\code{sm.client.id}}{[character]  the client id assigned by the session manager when the
   connection was opened, or \code{NULL} to remove the property.}}
\details{See the X Session Management Library documentation for more information on
session management and the Inter-Client Communication Conventions Manual
(ICCCM) for information on the \code{WM_CLIENT_LEADER} property. 
(Both documents are part of the X Window System distribution.)  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

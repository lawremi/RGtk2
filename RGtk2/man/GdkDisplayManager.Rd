\alias{GdkDisplayManager}
\name{GdkDisplayManager}
\title{GdkDisplayManager}
\description{Maintains a list of all open   s}
\usage{
\link{gdkDisplayManagerGet}()
\link{gdkDisplayManagerGetDefaultDisplay}(object)
\link{gdkDisplayManagerSetDefaultDisplay}(object, display)
\link{gdkDisplayManagerListDisplays}(object)
\link{gdkDisplayGetCorePointer}(object)
}
\details{The purpose of the \code{\link{GdkDisplayManager}} singleton object is to offer
notification when displays appear or disappear or the default display 
changes.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GdkDisplayManager}}
\section{Structures}{\describe{\item{\code{GdkDisplayManager}}{
The \code{GdkDisplayManager} struct has no interesting 
fields.
  Since 2.2

}}}
\section{Signals}{\describe{\item{\code{display-opened(display.manager, display, user.data)}}{
The ::display_opened signal is emitted when a display is opened.  

  Since  2.2

\describe{
\item{\code{display.manager}}{[\code{\link{GdkDisplayManager}}]  the object on which the signal is emitted}
\item{\code{display}}{[\code{\link{GdkDisplay}}]  the opened display}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{\item{\code{default-display} [\code{\link{GdkDisplay}} : Read / Write]}{

The default display for GDK.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/GdkDisplayManager.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

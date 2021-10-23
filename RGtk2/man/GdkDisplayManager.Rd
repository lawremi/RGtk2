\alias{GdkDisplayManager}
\name{GdkDisplayManager}
\title{GdkDisplayManager}
\description{Maintains a list of all open   s}
\section{Methods and Functions}{
\code{\link{gdkDisplayManagerGet}()}\cr
\code{\link{gdkDisplayManagerGetDefaultDisplay}(object)}\cr
\code{\link{gdkDisplayManagerSetDefaultDisplay}(object, display)}\cr
\code{\link{gdkDisplayManagerListDisplays}(object)}\cr
\code{\link{gdkDisplayGetCorePointer}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GdkDisplayManager}}
\section{Detailed Description}{The purpose of the \code{\link{GdkDisplayManager}} singleton object is to offer
notification when displays appear or disappear or the default display
changes.}
\section{Structures}{\describe{\item{\verb{GdkDisplayManager}}{
The \code{GdkDisplayManager} struct has no interesting
fields.
  Since 2.2

}}}
\section{Signals}{\describe{\item{\code{display-opened(display.manager, display, user.data)}}{
The ::display_opened signal is emitted when a display is opened.
  Since 2.2

\describe{
\item{\code{display.manager}}{the object on which the signal is emitted}
\item{\code{display}}{the opened display}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\verb{default-display} [\code{\link{GdkDisplay}} : *           : Read / Write]}{

The default display for GDK.

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/GdkDisplayManager.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

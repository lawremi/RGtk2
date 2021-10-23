\alias{gtk-Filesystem-utilities}
\alias{GtkMountOperation}
\alias{gtkMountOperation}
\name{gtk-Filesystem-utilities}
\title{Filesystem utilities}
\description{Functions for working with GIO}
\section{Methods and Functions}{
\code{\link{gtkMountOperationNew}(parent = NULL)}\cr
\code{\link{gtkMountOperationIsShowing}(object)}\cr
\code{\link{gtkMountOperationSetParent}(object, parent)}\cr
\code{\link{gtkMountOperationGetParent}(object)}\cr
\code{\link{gtkMountOperationSetScreen}(object, screen)}\cr
\code{\link{gtkMountOperationGetScreen}(object)}\cr
\code{\link{gtkShowUri}(screen = NULL, uri, timestamp, .errwarn = TRUE)}\cr
\code{gtkMountOperation(parent = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GMountOperation
         +----GtkMountOperation}}
\section{Detailed Description}{The functions and objects described here make working with GTK+ and
GIO more convenient.
  \code{\link{GtkMountOperation}} is needed when mounting volumes:
It is an implementation of \code{\link{GMountOperation}} that can be used with
GIO functions for mounting volumes such as
\code{\link{gFileMountEnclosingVolume}}, \code{\link{gFileMountMountable}},
\code{\link{gVolumeMount}}, \code{\link{gMountUnmountWithOperation}} and others.
  
When necessary, \code{\link{GtkMountOperation}} shows dialogs to ask for
passwords, questions or show processes blocking unmount.
  \code{\link{gtkShowUri}} is a convenient way to launch applications for URIs.
  
Another object that is worth mentioning in this context is
\code{\link{GdkAppLaunchContext}}, which provides visual feedback when lauching
applications.}
\section{Structures}{\describe{\item{\verb{GtkMountOperation}}{
This should not be accessed directly. Use the accessor functions below.

}}}
\section{Convenient Construction}{\code{gtkMountOperation} is the equivalent of \code{\link{gtkMountOperationNew}}.}
\section{Properties}{\describe{
\item{\verb{is-showing} [logical : Read]}{

Are we showing a dialog.  Default value: FALSE

}
\item{\verb{parent} [\code{\link{GtkWindow}} : *            : Read / Write]}{

The parent window.

}
\item{\verb{screen} [\code{\link{GdkScreen}} : *            : Read / Write]}{

The screen where this window will be displayed.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Filesystem-utilities.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{GtkToolShell}
\name{GtkToolShell}
\title{GtkToolShell}
\description{Interface for containers containing GtkToolItem widgets}
\section{Methods and Functions}{
\code{\link{gtkToolShellGetEllipsizeMode}(object)}\cr
\code{\link{gtkToolShellGetIconSize}(object)}\cr
\code{\link{gtkToolShellGetOrientation}(object)}\cr
\code{\link{gtkToolShellGetReliefStyle}(object)}\cr
\code{\link{gtkToolShellGetStyle}(object)}\cr
\code{\link{gtkToolShellGetTextAlignment}(object)}\cr
\code{\link{gtkToolShellGetTextOrientation}(object)}\cr
\code{\link{gtkToolShellRebuildMenu}(object)}\cr
\code{\link{gtkToolShellGetTextSizeGroup}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkToolShell}}
\section{Implementations}{GtkToolShell is implemented by
 \code{\link{GtkToolItemGroup}} and  \code{\link{GtkToolbar}}.}
\section{Detailed Description}{The \code{\link{GtkToolShell}} interface allows container widgets to provide additional
information when embedding \code{\link{GtkToolItem}} widgets.
  \code{see.also}: \code{\link{GtkToolbar}}, \code{\link{GtkToolItem}}}
\section{Structures}{\describe{\item{\verb{GtkToolShell}}{
Dummy structure for accessing instances of \verb{GtkToolShellIface}.

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToolShell.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

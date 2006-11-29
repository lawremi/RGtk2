\alias{GtkPageSetupUnixDialog}
\name{GtkPageSetupUnixDialog}
\title{GtkPageSetupUnixDialog}
\description{A page setup dialog}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----\link{GtkDialog}
                                             +----GtkPageSetupUnixDialog}}
\section{Interfaces}{GtkPageSetupUnixDialog implements
 AtkImplementorIface.}
\section{Detailed Description}{GtkPageSetupUnixDialog implements a page setup dialog for platforms
which don't provide a native page setup dialog, like Unix. It can
be used very much like any other GTK+ dialog, at the cost of
the portability offered by the high-level printing API
  
Printing support was added in GTK+ 2.10.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPageSetupUnixDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

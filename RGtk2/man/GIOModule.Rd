\alias{GIOModule}
\name{GIOModule}
\title{GIOModule}
\description{Loadable GIO Modules}
\section{Methods and Functions}{
\code{\link{gIOModuleNew}(filename)}\cr
\code{\link{gIOModulesLoadAllInDirectory}(dirname)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GTypeModule
         +----GIOModule}}
\section{Interfaces}{GIOModule implements
 GTypePlugin.}
\section{Detailed Description}{Provides an interface and default functions for loading and unloading 
modules. This is used internally to make GIO extensible, but can also
be used by others to implement module loading.}
\section{Structures}{\describe{\item{\verb{GIOModule}}{
Opaque module base class for extending GIO.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GIOModule.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

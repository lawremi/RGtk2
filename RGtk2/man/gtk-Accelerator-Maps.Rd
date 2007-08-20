\alias{gtk-Accelerator-Maps}
\alias{GtkAccelMap}
\alias{GtkAccelMapForeach}
\name{gtk-Accelerator-Maps}
\title{Accelerator Maps}
\description{Loadable keyboard accelerator specifications}
\section{Methods and Functions}{
\code{\link{gtkAccelMapAddEntry}(accel.path, accel.key, accel.mods)}\cr
\code{\link{gtkAccelMapLookupEntry}(accel.path)}\cr
\code{\link{gtkAccelMapChangeEntry}(accel.path, accel.key, accel.mods, replace)}\cr
\code{\link{gtkAccelMapLoad}(file.name)}\cr
\code{\link{gtkAccelMapSave}(file.name)}\cr
\code{\link{gtkAccelMapForeach}(data = NULL, foreach.func)}\cr
\code{\link{gtkAccelMapLoadFd}(fd)}\cr
\code{\link{gtkAccelMapSaveFd}(fd)}\cr
\code{\link{gtkAccelMapLoadScanner}(scanner)}\cr
\code{\link{gtkAccelMapAddFilter}(filter.pattern)}\cr
\code{\link{gtkAccelMapForeachUnfiltered}(data = NULL, foreach.func)}\cr
\code{\link{gtkAccelMapGet}()}\cr
\code{\link{gtkAccelMapLockPath}(accel.path)}\cr
\code{\link{gtkAccelMapUnlockPath}(accel.path)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkAccelMap}}
\section{Structures}{\describe{\item{\code{GtkAccelMap}}{
\emph{undocumented
}

}}}
\section{User Functions}{\describe{\item{\code{GtkAccelMapForeach(data, accel.path, accel.key, accel.mods, changed)}}{
\emph{undocumented
}

\describe{
\item{\code{data}}{[R object] }
\item{\code{accel.path}}{[character] }
\item{\code{accel.key}}{[numeric] }
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}] }
\item{\code{changed}}{[logical] }
}


}}}
\section{Signals}{\describe{\item{\code{The (object, accel.path, accel.key, accel.mods, user.data)}}{
Notifies of a change in the global accelerator map.
The path is also used as the detail for the signal,
so it is possible to connect to
changed::\\var{accel\_path}.  

  Since  2.4

\describe{
\item{\code{object}}{[\code{\link{GtkAccelMap}}]  the global accel map object}
\item{\code{accel.path}}{[character]  the path of the accelerator that changed}
\item{\code{accel.key}}{[numeric]  the key value for the new accelerator}
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}]  the modifier mask for the new accelerator}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Accelerator-Maps.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

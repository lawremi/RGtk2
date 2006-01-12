\alias{gdk-pixbuf-Module-Interface}
\alias{GdkPixbufFormat}
\alias{GdkPixbufModuleFillVtableFunc}
\alias{GdkPixbufModuleFillInfoFunc}
\alias{GdkPixbufModuleSizeFunc}
\alias{GdkPixbufModulePreparedFunc}
\alias{GdkPixbufModuleUpdatedFunc}
\name{gdk-pixbuf-Module-Interface}
\title{Module Interface}
\description{Extending }
\usage{
\link{gdkPixbufSetOption}(object, key, value)
\link{gdkPixbufGetFormats}()
\link{gdkPixbufFormatGetName}(object)
\link{gdkPixbufFormatGetDescription}(object)
\link{gdkPixbufFormatGetMimeTypes}(object)
\link{gdkPixbufFormatGetExtensions}(object)
\link{gdkPixbufFormatIsWritable}(object)
\link{gdkPixbufFormatIsScalable}(object)
\link{gdkPixbufFormatIsDisabled}(object)
\link{gdkPixbufFormatSetDisabled}(object, disabled)
\link{gdkPixbufFormatGetLicense}(object)
}
\details{If \command{gdk-pixbuf} has been compiled with GModule support, it can be extended by
modules which can load (and perhaps also save) new image and animation
formats. Each loadable module must export a
\code{GdkPixbufModuleFillInfoFunc} function named \code{fillInfo} and
a \code{GdkPixbufModuleFillVtableFunc} function named
\code{fillVtable}.
  
In order to make format-checking work before actually loading the modules
(which may require dlopening image libraries), modules export their 
signatures (and other information) via the \code{fillInfo}
function. An external utility, \command{gdk-pixbuf-query-loaders}, 
uses this to create a text file containing a list of all available loaders and 
their signatures. This file is then read at runtime by \command{gdk-pixbuf} to obtain
the list of available loaders and their signatures. 
  
Modules may only implement a subset of the functionality available via
\code{GdkPixbufModule}. If a particular functionality is not implemented, the
\code{fillVtable} function will simply not set the corresponding
function pointers of the \code{GdkPixbufModule} structure. If a module supports
incremental loading (i.e. provides \code{begin_load}, \code{stop_load} and
\code{load_increment}), it doesn't have to implement \code{load}, since \command{gdk-pixbuf} can 
supply a generic \code{load} implementation wrapping the incremental loading. 
  
Installing a module is a two-step process:
\itemize{
\item copy the module file(s) to the loader directory (normally
\file{\emph{undocumented
}},
unless overridden by the environment variable
\env{GDK_PIXBUF_MODULEDIR}) 
\item call \command{gdk-pixbuf-query-loaders} to update the
module file (normally
\file{\emph{undocumented
}},
unless overridden by the environment variable
\env{GDK_PIXBUF_MODULE_FILE})
}
  
The \command{gdk-pixbuf} interfaces needed for implementing modules are contained in 
\file{gdk-pixbuf-io.h} (and
\file{gdk-pixbuf-animation.h} if the module supports animations).
They are not covered by the same stability guarantees as the regular 
\command{gdk-pixbuf} API. To underline this fact, they are protected by 
\code{\emph{undocumented
}}.}
\section{Structures}{\describe{\item{\code{GdkPixbufFormat}}{
A \code{\link{GdkPixbufFormat}} contains information about the image format accepted by a
module. Only modules should access the fields directly, applications should
use the \code{gdkPixbufFormat*} functions.
  Since 2.2

\describe{
\item{\code{name}}{[character] the name of the image format.}
\item{\code{signature}}{[GdkPixbufModulePattern] the signature of the module.}
\item{\code{domain}}{[character] the message domain for the \code{description}.}
\item{\code{description}}{[character] a description of the image format.}
\item{\code{mime_types}}{[character] a list of MIME types for the image format.}
\item{\code{extensions}}{[character] a list of typical filename extensions for the
image format.}
\item{\code{flags}}{[numeric] a combination of \code{GdkPixbufFormatFlags}.}
\item{\code{disabled}}{[logical] a boolean determining whether the loader is disabled.}
\item{\code{license}}{[character] a string containing license information, typically set to 
 shorthands like "GPL", "LGPL", etc.}
}

}}}
\section{User Functions}{\describe{
\item{\code{GdkPixbufModuleFillVtableFunc(module)}}{
Defines the type of the function used to set the vtable of a 
\code{GdkPixbufModule} when it is loaded. 
  Since 2.2

\describe{\item{\code{module}}{[GdkPixbufModule] a \code{GdkPixbufModule}.}}

}
\item{\code{GdkPixbufModuleFillInfoFunc(info)}}{
Defines the type of the function used to fill a 
\code{\link{GdkPixbufFormat}} structure with information about a module.
  Since 2.2

\describe{\item{\code{info}}{[\code{\link{GdkPixbufFormat}}] a \code{\link{GdkPixbufFormat}}.}}

}
\item{\code{GdkPixbufModuleSizeFunc(width, height, user.data)}}{
Defines the type of the function that gets called once the size 
of the loaded image is known.
  
The function is expected to set \code{width} and \code{height} to the desired
size to which the image should be scaled. If a module has no efficient 
way to achieve the desired scaling during the loading of the image, it may
either ignore the size request, or only approximate it -- \command{gdk-pixbuf} will
then perform the required scaling on the completely loaded image. 
  
If the function sets \code{width} or \code{height} to zero, the module should interpret
this as a hint that it will be closed soon and shouldn't allocate further 
resources. This convention is used to implement \code{\link{gdkPixbufGetFileInfo}}
efficiently.
  Since 2.2

\describe{
\item{\code{width}}{[integer] pointer to a location containing the current image width}
\item{\code{height}}{[integer] pointer to a location containing the current image height}
\item{\code{user.data}}{[R object] the loader.}
}

}
\item{\code{GdkPixbufModulePreparedFunc(pixbuf, anim, user.data)}}{
Defines the type of the function that gets called once the initial 
setup of \code{pixbuf} is done.
  
\code{\link{GdkPixbufLoader}} uses a function of this type to emit the 
"area_prepared"
signal.
  Since 2.2

\describe{
\item{\code{pixbuf}}{[\code{\link{GdkPixbuf}}] the \code{\link{GdkPixbuf}} that is currently being loaded.}
\item{\code{anim}}{[\code{\link{GdkPixbufAnimation}}] if an animation is being loaded, the \code{\link{GdkPixbufAnimation}}, else \code{NULL}.}
\item{\code{user.data}}{[R object] the loader.}
}

}
\item{\code{GdkPixbufModuleUpdatedFunc(pixbuf, x, y, width, height, user.data)}}{
Defines the type of the function that gets called every time a region
of \code{pixbuf} is updated.
  
\code{\link{GdkPixbufLoader}} uses a function of this type to emit the 
"area_updated"
signal.
  Since 2.2

\describe{
\item{\code{pixbuf}}{[\code{\link{GdkPixbuf}}] the \code{\link{GdkPixbuf}} that is currently being loaded.}
\item{\code{x}}{[integer] the X origin of the updated area.}
\item{\code{y}}{[integer] the Y origin of the updated area.}
\item{\code{width}}{[integer] the width of the updated area.}
\item{\code{height}}{[integer] the height of the updated area.}
\item{\code{user.data}}{[R object] the loader.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk-pixbuf/gdk-pixbuf-Module-Interface.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

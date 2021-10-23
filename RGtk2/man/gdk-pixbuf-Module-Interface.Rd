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
\section{Methods and Functions}{
\code{\link{gdkPixbufSetOption}(object, key, value)}\cr
\code{\link{gdkPixbufGetFormats}()}\cr
\code{\link{gdkPixbufFormatGetName}(object)}\cr
\code{\link{gdkPixbufFormatGetDescription}(object)}\cr
\code{\link{gdkPixbufFormatGetMimeTypes}(object)}\cr
\code{\link{gdkPixbufFormatGetExtensions}(object)}\cr
\code{\link{gdkPixbufFormatIsWritable}(object)}\cr
\code{\link{gdkPixbufFormatIsScalable}(object)}\cr
\code{\link{gdkPixbufFormatIsDisabled}(object)}\cr
\code{\link{gdkPixbufFormatSetDisabled}(object, disabled)}\cr
\code{\link{gdkPixbufFormatGetLicense}(object)}\cr
}
\section{Detailed Description}{If \command{gdk-pixbuf} has been compiled with GModule support, it can be extended by
modules which can load (and perhaps also save) new image and animation
formats. Each loadable module must export a
\verb{GdkPixbufModuleFillInfoFunc} function named \code{fillInfo} and
a \verb{GdkPixbufModuleFillVtableFunc} function named
\code{fillVtable}.
  
In order to make format-checking work before actually loading the modules
(which may require dlopening image libraries), modules export their
signatures (and other information) via the \code{fillInfo}
function. An external utility, \command{gdk-pixbuf-query-loaders},
uses this to create a text file containing a list of all available loaders and
their signatures. This file is then read at runtime by \command{gdk-pixbuf} to obtain
the list of available loaders and their signatures.
  
Modules may only implement a subset of the functionality available via
\verb{GdkPixbufModule}. If a particular functionality is not implemented, the
\code{fillVtable} function will simply not set the corresponding
function pointers of the \verb{GdkPixbufModule} structure. If a module supports
incremental loading (i.e. provides \verb{begin_load}, \verb{stop_load} and
\verb{load_increment}), it doesn't have to implement \verb{load}, since \command{gdk-pixbuf} can
supply a generic \verb{load} implementation wrapping the incremental loading.
  
Installing a module is a two-step process:
\itemize{
\item copy the module file(s) to the loader directory (normally
\file{libdir},
unless overridden by the environment variable
\env{GDK_PIXBUF_MODULEDIR})
\item call \command{gdk-pixbuf-query-loaders} to update the
module file (normally
\file{sysconfdir},
unless overridden by the environment variable
\env{GDK_PIXBUF_MODULE_FILE})
}
  
The \command{gdk-pixbuf} interfaces needed for implementing modules are contained in
\file{gdk-pixbuf-io.h} (and
\file{gdk-pixbuf-animation.h} if the module supports animations).
They are not covered by the same stability guarantees as the regular
\command{gdk-pixbuf} API. To underline this fact, they are protected by
\code{#ifdef GDK_PIXBUF_ENABLE_BACKEND}.}
\section{Structures}{\describe{\item{\verb{GdkPixbufFormat}}{
A \code{\link{GdkPixbufFormat}} contains information about the image format accepted by a
module. Only modules should access the fields directly, applications should
use the \code{gdkPixbufFormat*} functions.
  Since 2.2

\describe{
\item{\code{name}}{the name of the image format.}
\item{\code{signature}}{the signature of the module.}
\item{\code{domain}}{the message domain for the \code{description}.}
\item{\code{description}}{a description of the image format.}
\item{\code{mime_types}}{a list of MIME types for the image format.}
\item{\code{extensions}}{a list of typical filename extensions for the
image format.}
\item{\code{flags}}{a combination of \verb{GdkPixbufFormatFlags}.}
\item{\code{disabled}}{a boolean determining whether the loader is disabled.}
\item{\code{license}}{a string containing license information, typically set to
shorthands like "GPL", "LGPL", etc.}
}

}}}
\section{User Functions}{\describe{
\item{\code{GdkPixbufModuleFillVtableFunc(module)}}{
Defines the type of the function used to set the vtable of a
\verb{GdkPixbufModule} when it is loaded.
  Since 2.2

\describe{\item{\code{module}}{a \verb{GdkPixbufModule}.}}


}
\item{\code{GdkPixbufModuleFillInfoFunc(info)}}{
Defines the type of the function used to fill a
\code{\link{GdkPixbufFormat}} structure with information about a module.
  Since 2.2

\describe{\item{\code{info}}{a \code{\link{GdkPixbufFormat}}.}}


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
\item{\code{width}}{pointer to a location containing the current image width}
\item{\code{height}}{pointer to a location containing the current image height}
\item{\code{user.data}}{the loader.}
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
\item{\code{pixbuf}}{the \code{\link{GdkPixbuf}} that is currently being loaded.}
\item{\code{anim}}{if an animation is being loaded, the \code{\link{GdkPixbufAnimation}}, else \code{NULL}.}
\item{\code{user.data}}{the loader.}
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
\item{\code{pixbuf}}{the \code{\link{GdkPixbuf}} that is currently being loaded.}
\item{\code{x}}{the X origin of the updated area.}
\item{\code{y}}{the Y origin of the updated area.}
\item{\code{width}}{the width of the updated area.}
\item{\code{height}}{the height of the updated area.}
\item{\code{user.data}}{the loader.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-Module-Interface.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

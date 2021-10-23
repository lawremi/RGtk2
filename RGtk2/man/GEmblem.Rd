\alias{GEmblem}
\alias{gEmblem}
\alias{GEmblemOrigin}
\name{GEmblem}
\title{GEmblem}
\description{An object for emblems}
\section{Methods and Functions}{
\code{\link{gEmblemNew}(icon = NULL, origin = NULL)}\cr
\code{\link{gEmblemNewWithOrigin}(icon, origin)}\cr
\code{\link{gEmblemGetIcon}(object)}\cr
\code{\link{gEmblemGetOrigin}(object)}\cr
\code{gEmblem(icon, origin)}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GEmblem
GEnum
   +----GEmblemOrigin
}}
\section{Interfaces}{GEmblem implements
 \code{\link{GIcon}}.}
\section{Detailed Description}{\code{\link{GEmblem}} is an implementation of \code{\link{GIcon}} that supports
having an emblem, which is an icon with additional properties.
It can than be added to a \code{\link{GEmblemedIcon}}.
  
Currently, only metainformation about the emblem's origin is
supported. More may be added in the future.}
\section{Structures}{\describe{\item{\verb{GEmblem}}{
An object for Emblems

}}}
\section{Convenient Construction}{\code{gEmblem} is the result of collapsing the constructors of \code{GEmblem} (\code{\link{gEmblemNew}}, \code{\link{gEmblemNewWithOrigin}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\verb{GEmblemOrigin}}{
GEmblemOrigin is used to add information about the origin of the emblem
to \code{\link{GEmblem}}.
  Since 2.18

\describe{
\item{\verb{unknown}}{Emblem of unknown origin}
\item{\verb{device}}{Emblem adds device-specific information}
\item{\verb{livemetadata}}{Emblem depicts live metadata, such as "readonly"}
\item{\verb{tag}}{Emblem comes from a user-defined tag, e.g. set by nautilus (in the future)}
}

}}}
\section{Properties}{\describe{
\item{\verb{icon} [\code{\link{GObject}} : *              : Read / Write / Construct Only]}{

The actual icon of the emblem.

}
\item{\verb{origin} [\code{\link{GEmblemOrigin}} : Read / Write / Construct Only]}{

Tells which origin the emblem is derived from.  Default value: G_EMBLEM_ORIGIN_UNKNOWN

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GEmblem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

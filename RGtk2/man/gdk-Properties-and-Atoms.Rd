\alias{gdk-Properties-and-Atoms}
\alias{GdkAtom}
\alias{GdkPropMode}
\name{gdk-Properties-and-Atoms}
\title{Properties and Atoms}
\description{Functions to manipulate properties on windows}
\section{Methods and Functions}{
\code{\link{gdkAtomIntern}(atom.name, only.if.exists = FALSE)}\cr
\code{\link{gdkAtomInternStaticString}(atom.name)}\cr
\code{\link{gdkAtomName}(atom)}\cr
\code{\link{gdkPropertyGet}(object, property, type, offset, length, pdelete)}\cr
\code{\link{gdkPropertyChange}(object, property, type, format, mode, data)}\cr
\code{\link{gdkPropertyDelete}(object, property)}\cr
}
\section{Detailed Description}{Each window under X can have any number of associated
\dfn{properties} attached to it.
Properties are arbitrary chunks of data identified by
\dfn{atom}s. (An \dfn{atom}
is a numeric index into a string table on the X server. They are used
to transfer strings efficiently between clients without
having to transfer the entire string.) A property
has an associated type, which is also identified
using an atom.
  
A property has an associated \dfn{format},
an integer describing how many bits are in each unit
of data inside the property. It must be 8, 16, or 32.
When data is transferred between the server and client,
if they are of different endianesses it will be byteswapped
as necessary according to the format of the property.
Note that on the client side, properties of format 32
will be stored with one unit per \emph{long},
even if a long integer has more than 32 bits on the platform.
(This decision was apparently made for Xlib to maintain
compatibility with programs that assumed longs were 32
bits, at the expense of programs that knew better.)
  
The functions in this section are used to add, remove
and change properties on windows, to convert atoms
to and from strings and to manipulate some types of
data commonly stored in X window properties.}
\section{Structures}{\describe{\item{\verb{GdkAtom}}{
An opaque type representing a string as an index into a table
of strings on the X server.
\strong{\verb{GdkAtom} is a \link{transparent-type}.}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GdkPropMode}}{
Describes how existing data is combined with new data when
using \code{\link{gdkPropertyChange}}.

\describe{
\item{\verb{replace}}{the new data replaces the existing data.}
\item{\verb{prepend}}{the new data is prepended to the existing data.}
\item{\verb{append}}{the new data is appended to the existing data.}
}

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Properties-and-Atoms.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

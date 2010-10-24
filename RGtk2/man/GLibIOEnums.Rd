\name{GLibIOEnums}
\alias{GSeekType}
\alias{GIOCondition}
\alias{GPriority}
\title{GLib IO Symbols}

\description{
  Enumerations from GLib used by GIO
}

\details{
  \describe{
    \item{\verb{GSeekType}}{
      An enumeration specifying the base position for a seek operation
      \describe{
        \item{\verb{cur}}{The current position in the file. }
        \item{\verb{set}}{The start of the file.}
        \item{\verb{end}}{The end of the file.}
      }
    }
    \item{\verb{GIOCondition}}{
      A bitwise combination representing a condition to watch for on an
      event source. 
      \describe{
        \item{\verb{in}}{There is data to read. }
        \item{\verb{out}}{Data can be written (unblocked).}
        \item{\verb{pri}}{There is urgent data to read.}
        \item{\verb{err}}{Error condition.}
        \item{\verb{hup}}{Hung up (the connection has been broken, usually for pipes and sockets). }
        \item{\verb{nval}}{Invalid request. The file descriptor is not open.}
      }
    }
    \item{\verb{GPriority}}{
      Convenient constants for indicating the priority of I/O operations.
      \describe{
        \item{\verb{high}}{Use this for high priority event sources. It is
          not used within GLib or GTK+.}
        \item{\verb{default}}{Use this for default priority event
          sources. In GLib this priority is used when adding timeout
          functions with g_timeout_add(). In GDK this priority is used for
          events from the X server.
        }
        \item{\verb{high-idle}}{Use this for high priority idle
          functions. GTK+ uses G_PRIORITY_HIGH_IDLE + 10 for resizing
          operations, and G_PRIORITY_HIGH_IDLE + 20 for redrawing
          operations. (This is done to ensure that any pending resizes are
          processed before any pending redraws, so that widgets are not
          redrawn twice unnecessarily.)
        }
        \item{\verb{default-idle}}{Use this for default priority idle
          functions. In GLib this priority is used when adding idle
          functions with g_idle_add(). }
        \item{\verb{low}}{Use this for very low priority background
          tasks. It is not used within GLib or GTK+. }
      }
    }
  }
}

\keyword{internal}
\author{Michael Lawrence}
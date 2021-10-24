\name{gtkTargetEntry}
\alias{gtkTargetEntry}
\alias{gtkTargetEntryNew}
\title{Create a new target for drag-n-drop(?)}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This creates a new GtkTarget object.
  This is used in transferring data
  in the form of selections
  between processes or widgets.
}
\usage{
gtkTargetEntry(target, flags, info)
gtkTargetEntryNew(target, flags, info)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{target}{a string}
  \item{flags}{an integer value}
  \item{info}{an integer value}
}
\details{
  This allocates a new GtkTargetEntry object in C
  and fills in the targer, flags and info fields.
}
\value{
  A reference to the newly creatd GtkTargetEntry.
}
\references{
  Information on the package is available
  from \url{http://www.omegahat.net/RGtk/}.

  Information on Gtk is available from
  \url{http://www.gtk.org}.
}
\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\keyword{interface}
\keyword{internal}



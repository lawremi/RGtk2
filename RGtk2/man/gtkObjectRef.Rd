\name{gtkObjectRef}
\alias{gtkObjectRef}
\alias{gtkObjectUnref}
\title{Increment and decrement GtkObject references}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This allows the R programmer to explicitly
  increment and decrement the references to a GtkObject.
  This is useful, indeed necessary, if one needs to ensure
  that a particular GtkObject needs to exist even if
  it would be garbage collected by Gtk's own reference
  mechanism. For example, if we remove a GtkWidget from
  a GUI but want to use it later, we should increase
  the reference count by 1 before removing it
  and decrement it after we have added it to the
  new GUI.
}
\usage{
gtkObjectRef(obj)
gtkObjectUnref(obj)
}
\arguments{
  \item{obj}{the GtkObject whose reference count is to be altered.}
}
\details{
  These functions are direct interfaces to the
  \code{gtk_object_ref} and \code{gtk_object_unref}
  routines in the Gtk library.
}
\value{

}
\references{
  Information on the package is available
  from \url{http://www.omegahat.org/RGtk}.

  Information on Gtk is available from
  \url{http://www.gtk.org}.
}
\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}

\seealso{
\code{\link{gtkContainerRemove}}
}
\examples{
\dontrun{
 win = gtkWindow()
 b1 = gtkButton("A button")
 b2 = gtkButton("Another button")

 b1$Ref()
 b2$Ref()

 b1$AddCallback("clicked",
                   function(b, w)  {
                      win$Remove(w)
                      win$Add(b)
                   }, b2)
 b2$AddCallback("clicked",
                   function(b, w)  {
                      win$Remove(w)
                      win$Add(b)
                   }, b1)


 win$AddCallback("destroy",
                  function(obj) {
                    b1$Unref()
                    b2$Unref()
                  })
} 
}

\keyword{interface}
\keyword{internal}


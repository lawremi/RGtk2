\alias{gtkTreeRowReferenceNewProxy}
\name{gtkTreeRowReferenceNewProxy}
\title{gtkTreeRowReferenceNewProxy}
\description{You do not need to use this function.  Creates a row reference based on
\code{path}.  This reference will keep pointing to the node pointed to by \code{path}, 
so long as it exists.  If \code{path} isn't a valid path in \code{model}, then \code{NULL} is
returned.  However, unlike references created with
\code{\link{gtkTreeRowReferenceNew}}, it does not listen to the model for changes.
The creator of the row reference must do this explicitly using
\code{\link{gtkTreeRowReferenceInserted}}, \code{\link{gtkTreeRowReferenceDeleted}},
\code{\link{gtkTreeRowReferenceReordered}}.}
\usage{gtkTreeRowReferenceNewProxy(proxy, model, path)}
\arguments{
\item{\verb{proxy}}{[\verb{\link{GObject}}]  A proxy \verb{\link{GObject}}}
\item{\verb{model}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  A valid \verb{\link{GtkTreePath}} to monitor}
}
\details{These functions must be called exactly once per proxy when the
corresponding signal on the model is emitted. This single call
updates all row references for that proxy. Since built-in GTK+
objects like \verb{\link{GtkTreeView}} already use this mechanism internally,
using them as the proxy object will produce unpredictable results.
Further more, passing the same object as \code{model} and \code{proxy}
doesn't work for reasons of internal implementation.
  
This type of row reference is primarily meant by structures that need to
carefully monitor exactly when a row reference updates itself, and is not
generally needed by most applications.  }
\value{[\verb{\link{GtkTreeRowReference}}]  A newly allocated \verb{\link{GtkTreeRowReference}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

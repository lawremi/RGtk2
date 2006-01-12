\alias{gtkUIManagerAddUi}
\name{gtkUIManagerAddUi}
\title{gtkUIManagerAddUi}
\description{Adds a UI element to the current contents of \code{self}. }
\usage{gtkUIManagerAddUi(object, merge.id, path, name, action = NULL, type, top)}
\arguments{
\item{\code{object}}{[\code{\link{GtkUIManager}}]  a \code{\link{GtkUIManager}}}
\item{\code{merge.id}}{[numeric]  the merge id for the merged UI, see \code{\link{gtkUIManagerNewMergeId}}}
\item{\code{path}}{[character]  a path}
\item{\code{name}}{[character]  the name for the added UI element}
\item{\code{action}}{[character]  the name of the action to be proxied, or \code{NULL} to add a separator}
\item{\code{type}}{[\code{\link{GtkUIManagerItemType}}]  the type of UI element to add.}
\item{\code{top}}{[logical]  if \code{TRUE}, the UI element is added before its siblings, otherwise it 
  is added after its siblings.}
}
\details{If \code{type} is \code{GTK_UI_MANAGER_AUTO}, GTK+ inserts a menuitem, toolitem or 
separator if such an element can be inserted at the place determined by 
\code{path}. Otherwise \code{type} must indicate an element that can be inserted at 
the place determined by \code{path}.
  
If \code{path} points to a menuitem or toolitem, the new element will be inserted
before or after this item, depending on \code{top}.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

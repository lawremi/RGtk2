\alias{AtkSelection}
\name{AtkSelection}
\title{AtkSelection}
\description{The ATK interface implemented by container objects whose    children
can be selected.}
\usage{
\link{atkSelectionAddSelection}(object, i)
\link{atkSelectionClearSelection}(object)
\link{atkSelectionRefSelection}(object, i)
\link{atkSelectionGetSelectionCount}(object)
\link{atkSelectionIsChildSelected}(object, i)
\link{atkSelectionRemoveSelection}(object, i)
\link{atkSelectionSelectAllSelection}(object)
}
\details{\code{\link{AtkSelection}} should be implemented by UI components with children which
are exposed by \code{atk_object_ref_child} and \code{atk_object_get_n_children}, if
the use of the parent UI component ordinarily involves selection of one
or more of the objects corresponding to those \code{\link{AtkObject}} children - for
example, selectable lists.
  
Note that other types of "selection" (for instance text selection) are
accomplished a other ATK interfaces - \code{\link{AtkSelection}} is limited to the
selection/deselection of children.}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkSelection}}
\section{Structures}{\describe{\item{\code{AtkSelection}}{
The AtkAction structure does not contain any fields.

}}}
\section{Implementations}{AtkSelection is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Signals}{\describe{\item{\code{selection-changed(atkselection, user.data)}}{
The "selection-changed" signal is emitted by an object which implements 
AtkSelection interface when the selection changes.

\describe{
\item{\code{atkselection}}{[\code{\link{AtkSelection}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{AtkText}}}
\keyword{internal}
\alias{AtkSelection}
\name{AtkSelection}
\title{AtkSelection}
\description{The ATK interface implemented by container objects whose    children
can be selected.}
\section{Methods and Functions}{
\code{\link{atkSelectionAddSelection}(object, i)}\cr
\code{\link{atkSelectionClearSelection}(object)}\cr
\code{\link{atkSelectionRefSelection}(object, i)}\cr
\code{\link{atkSelectionGetSelectionCount}(object)}\cr
\code{\link{atkSelectionIsChildSelected}(object, i)}\cr
\code{\link{atkSelectionRemoveSelection}(object, i)}\cr
\code{\link{atkSelectionSelectAllSelection}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkSelection}}
\section{Implementations}{AtkSelection is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkSelection}} should be implemented by UI components with children which
are exposed by \verb{atk_object_ref_child} and \verb{atk_object_get_n_children}, if
the use of the parent UI component ordinarily involves selection of one
or more of the objects corresponding to those \code{\link{AtkObject}} children - for
example, selectable lists.
  
Note that other types of "selection" (for instance text selection) are
accomplished a other ATK interfaces - \code{\link{AtkSelection}} is limited to the
selection/deselection of children.}
\section{Structures}{\describe{\item{\verb{AtkSelection}}{
The AtkAction structure does not contain any fields.

}}}
\section{Signals}{\describe{\item{\code{selection-changed(atkselection, user.data)}}{
The "selection-changed" signal is emitted by an object which implements
AtkSelection interface when the selection changes.

\describe{
\item{\code{atkselection}}{[\code{\link{AtkSelection}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{AtkText}}}
\keyword{internal}

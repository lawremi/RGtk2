\alias{atk-AtkStateSet}
\name{atk-AtkStateSet}
\title{AtkStateSet}
\description{An AtkStateSet determines a component's state set.}
\section{Methods and Functions}{
\code{\link{atkStateSetNew}()}\cr
\code{\link{atkStateSetIsEmpty}(object)}\cr
\code{\link{atkStateSetAddState}(object, type)}\cr
\code{\link{atkStateSetAddStates}(object, types)}\cr
\code{\link{atkStateSetClearStates}(object)}\cr
\code{\link{atkStateSetContainsState}(object, type)}\cr
\code{\link{atkStateSetContainsStates}(object, types, n.types)}\cr
\code{\link{atkStateSetRemoveState}(object, type)}\cr
\code{\link{atkStateSetAndSets}(object, compare.set)}\cr
\code{\link{atkStateSetOrSets}(object, compare.set)}\cr
\code{\link{atkStateSetXorSets}(object, compare.set)}\cr
}
\section{Detailed Description}{An AtkStateSet determines a component's state set. It is composed of a set 
of AtkStates.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/atk-AtkStateSet.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

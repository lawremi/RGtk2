\alias{AtkStateSet}
\alias{atkStateSet}
\name{AtkStateSet}
\title{AtkStateSet}
\description{An AtkStateSet determines a component's state set.}
\section{Methods and Functions}{
\code{\link{atkStateSetNew}()}\cr
\code{\link{atkStateSetIsEmpty}(object)}\cr
\code{\link{atkStateSetAddState}(object, type)}\cr
\code{\link{atkStateSetAddStates}(object, types)}\cr
\code{\link{atkStateSetClearStates}(object)}\cr
\code{\link{atkStateSetContainsState}(object, type)}\cr
\code{\link{atkStateSetContainsStates}(object, types)}\cr
\code{\link{atkStateSetRemoveState}(object, type)}\cr
\code{\link{atkStateSetAndSets}(object, compare.set)}\cr
\code{\link{atkStateSetOrSets}(object, compare.set)}\cr
\code{\link{atkStateSetXorSets}(object, compare.set)}\cr
\code{atkStateSet()}
}
\section{Hierarchy}{\preformatted{GObject
   +----AtkStateSet}}
\section{Detailed Description}{An AtkStateSet determines a component's state set. It is composed of a set
of AtkStates.}
\section{Structures}{\describe{\item{\verb{AtkStateSet}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{atkStateSet} is the equivalent of \code{\link{atkStateSetNew}}.}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkStateSet.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

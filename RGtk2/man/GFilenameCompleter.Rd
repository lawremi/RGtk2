\alias{GFilenameCompleter}
\alias{gFilenameCompleter}
\name{GFilenameCompleter}
\title{GFilenameCompleter}
\description{Filename Completer}
\section{Methods and Functions}{
\code{\link{gFilenameCompleterNew}()}\cr
\code{\link{gFilenameCompleterGetCompletionSuffix}(object, initial.text)}\cr
\code{\link{gFilenameCompleterGetCompletions}(object, initial.text)}\cr
\code{\link{gFilenameCompleterSetDirsOnly}(object, dirs.only)}\cr
\code{gFilenameCompleter()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GFilenameCompleter}}
\section{Detailed Description}{Completes partial file and directory names given a partial string by
looking in the file system for clues. Can return a list of possible 
completion strings for widget implementations.}
\section{Structures}{\describe{\item{\verb{GFilenameCompleter}}{
Completes filenames based on files that exist within the file system.

}}}
\section{Convenient Construction}{\code{gFilenameCompleter} is the equivalent of \code{\link{gFilenameCompleterNew}}.}
\section{Signals}{\describe{\item{\code{got-completion-data(user.data)}}{
Emitted when the file name completion information comes available.

\describe{\item{\code{user.data}}{user data set when the signal handler was connected.}}


}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFilenameCompleter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

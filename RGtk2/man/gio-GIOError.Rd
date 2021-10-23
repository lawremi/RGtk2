\alias{gio-GIOError}
\alias{GIOErrorEnum}
\name{gio-GIOError}
\title{GIOError}
\description{Error helper functions}
\section{Methods and Functions}{\code{\link{gIoErrorFromErrno}(err.no)}\cr}
\section{Hierarchy}{\preformatted{GEnum
   +----GIOErrorEnum}}
\section{Detailed Description}{Contains helper functions for reporting errors to the user.}
\section{Enums and Flags}{\describe{\item{\verb{GIOErrorEnum}}{
Error codes returned by GIO functions.

\describe{
\item{\verb{failed}}{Generic error condition for when any operation fails.}
\item{\verb{not-found}}{File not found error.}
\item{\verb{exists}}{File already exists error.}
\item{\verb{is-directory}}{File is a directory error.}
\item{\verb{not-directory}}{File is not a directory.}
\item{\verb{not-empty}}{File is a directory that isn't empty.}
\item{\verb{not-regular-file}}{File is not a regular file.}
\item{\verb{not-symbolic-link}}{File is not a symbolic link.}
\item{\verb{not-mountable-file}}{File cannot be mounted.}
\item{\verb{filename-too-long}}{Filename is too many characters.}
\item{\verb{invalid-filename}}{Filename is invalid or contains invalid characters.}
\item{\verb{too-many-links}}{File contains too many symbolic links.}
\item{\verb{no-space}}{No space left on drive.}
\item{\verb{invalid-argument}}{Invalid argument.}
\item{\verb{permission-denied}}{Permission denied.}
\item{\verb{not-supported}}{Operation not supported for the current backend.}
\item{\verb{not-mounted}}{File isn't mounted.}
\item{\verb{already-mounted}}{File is already mounted.}
\item{\verb{closed}}{File was closed.}
\item{\verb{cancelled}}{Operation was cancelled. See \code{\link{GCancellable}}.}
\item{\verb{pending}}{Operations are still pending.}
\item{\verb{read-only}}{File is read only.}
\item{\verb{cant-create-backup}}{Backup couldn't be created.}
\item{\verb{wrong-etag}}{File's Entity Tag was incorrect.}
\item{\verb{timed-out}}{Operation timed out.}
\item{\verb{would-recurse}}{Operation would be recursive.}
\item{\verb{busy}}{File is busy.}
\item{\verb{would-block}}{Operation would block.}
\item{\verb{host-not-found}}{Host couldn't be found (remote operations).}
\item{\verb{would-merge}}{Operation would merge files.}
\item{\verb{failed-handled}}{Operation failed and a helper program has 
    already interacted with the user. Do not display any error dialog.}
}

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/gio-GIOError.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

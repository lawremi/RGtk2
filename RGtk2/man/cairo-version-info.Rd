\alias{cairo-version-info}
\name{cairo-version-info}
\title{Version Information}
\description{Compile-time and run-time version checks.}
\section{Methods and Functions}{
\code{\link{cairoVersion}()}\cr
\code{\link{cairoVersionString}()}\cr
}
\section{Detailed Description}{Cairo has a three-part version number scheme. In this scheme, we use
even vs. odd numbers to distinguish fixed points in the software
vs. in-progress development, (such as from git instead of a tar file,
or as a "snapshot" tar file as opposed to a "release" tar file).
  \preformatted{ _____ Major. Always 1, until we invent a new scheme.
/  ___ Minor. Even/Odd = Release/Snapshot (tar files) or Branch/Head (git)
| /  _ Micro. Even/Odd = Tar-file/git
| | /
1.0.0
}  
Here are a few examples of versions that one might see.
\preformatted{Releases
--------
1.0.0 - A major release
1.0.2 - A subsequent maintenance release
1.2.0 - Another major release
Snapshots
---------
1.1.2 - A snapshot (working toward the 1.2.0 release)
In-progress development (eg. from git)
--------------------------------------
1.0.1 - Development on a maintenance branch (toward 1.0.2 release)
1.1.1 - Development on head (toward 1.1.2 snapshot and 1.2.0 release)
}}
\section{Compatibility}{The API/ABI compatibility guarantees for various versions are as
follows. First, let's assume some cairo-using application code that is
successfully using the API/ABI "from" one version of cairo. Then let's
ask the question whether this same code can be moved "to" the API/ABI
of another version of cairo.
  
Moving from a release to any later version (release, snapshot,
development) is always guaranteed to provide compatibility.
  
Moving from a snapshot to any later version is not guaranteed to
provide compatibility, since snapshots may introduce new API that ends
up being removed before the next release.
  
Moving from an in-development version (odd micro component) to any
later version is not guaranteed to provide compatibility. In fact,
there's not even a guarantee that the code will even continue to work
with the same in-development version number. This is because these
numbers don't correspond to any fixed state of the software, but
rather the many states between snapshots and releases.}
\section{Examining the version}{Cairo provides the ability to examine the version at either
compile-time or run-time and in both a human-readable form as well as
an encoded form suitable for direct comparison. Cairo also provides the
function \code{cairoVersionEncode()} to perform the encoding.
  \preformatted{
Compile-time
--------
R users should not be concerned with compile-time version checking.

Run-time
--------
cairoVersionString()	Human-readable, use compareVersion() for comparison
cairoVersion()		Encoded, not very useful in R
}  
For example, checking that the cairo version is greater than or equal
to 1.0.0 could be achieved at compile-time or run-time as follows:
\preformatted{
# R users should not be concerned with compile-time checking, but at runtime:

if (compareVersion(cairoVersionString(), "1.0.0") == 1)
  cat("Running with suitable cairo version:", cairoVersionString(), "\n")

}}
\references{\url{https://www.cairographics.org/manual/cairo-Version-Information.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

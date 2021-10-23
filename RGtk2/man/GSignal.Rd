\name{GSignal}
\alias{GSignal}
\alias{gSignalConnect}
\alias{connectSignal}
\alias{gSignalHandlerDisconnect}
\alias{gSignalHandlerBlock}
\alias{gSignalHandlerUnblock}
\alias{gSignalEmit}
\alias{gSignalStopEmission}
\alias{gSignalGetInfo}
\alias{GSignalFlags}
\alias{GConnectFlags}
\title{The GSignal API}
\description{
The basic concept of the signal system is that of the emission of a signal. 
Signals are introduced per-type and are identified through strings. 
Signals introduced for a parent type are available in derived types as well, 
so basically they are a per-type facility that is inherited. 
}
\usage{
gSignalConnect(obj, signal, f, data = NULL, after = FALSE, user.data.first = FALSE)
gSignalHandlerDisconnect(obj, id)
gSignalHandlerBlock(obj, id)
gSignalHandlerUnblock(obj, id)
gSignalEmit(obj, signal, ..., detail = NULL)
gSignalStopEmission(obj, signal, detail = NULL)
gSignalGetInfo(sig)
}
\arguments{
\item{obj}{The object that owns the signal}
\item{signal}{The detailed name of the signal}
\item{f}{The R function to connect as a callback}
\item{data}{Arbitrary "user data" that will be passed to the callback \code{f}}
\item{after}{Whether \code{f} will be called before or after the default handler}
\item{user.data.first}{Whether the \code{data} is the first or last argument to the callback}
\item{id}{The signal handler id obtained upon connection to the signal}
\item{...}{Arguments to pass to the signal handlers}
\item{detail}{Optional separate argument for the \emph{detail} portion of the signal}
\item{sig}{A signal id provided by \code{\link{gObjectGetSignals}}.}
}
\details{
A signal emission mainly involves invocation of a certain set of callbacks 
in precisely defined manner. There are two main categories of such callbacks, 
per-object ones and user provided ones. The per-object callbacks are most often 
referred to as "object method handler" or "default (signal) handler", 
while user provided callbacks are usually just called "signal handler". 
The object method handler is provided at signal creation time (this most 
frequently happens at the end of an object class' creation), while user 
provided handlers are frequently connected and disconnected to/from a certain 
signal on certain object instances.

A signal emission consists of five stages, unless prematurely stopped: 
\enumerate{
\item Invocation of the object method handler for \code{G_SIGNAL_RUN_FIRST} signals
\item Invocation of normal user-provided signal handlers (\code{after} flag \code{FALSE})
\item Invocation of the object method handler for \code{G_SIGNAL_RUN_LAST} signals
\item Invocation of user provided signal handlers, connected with an \code{after} flag of \code{TRUE}
\item Invocation of the object method handler for \code{G_SIGNAL_RUN_CLEANUP} signals
}

The user-provided signal handlers are called in the order they were connected in. 
All handlers may prematurely stop a signal emission, and any number of handlers 
may be connected, disconnected, blocked or unblocked during a signal emission. 
There are certain criteria for skipping user handlers in stages 2 and 4 of a 
signal emission. First, user handlers may be blocked, blocked handlers are 
omitted during callback invocation, to return from the "blocked" state, 
a handler has to get unblocked exactly the same amount of times it has been 
blocked before. Second, upon emission of a \code{G_SIGNAL_DETAILED} signal, 
an additional "detail" argument passed in to \code{gSignalEmit} has to match 
the detail argument of the signal handler currently subject to invocation. 
Specification of no detail argument for signal handlers (omission of the detail 
part of the signal specification upon connection) serves as a wildcard and 
matches any detail argument passed in to emission.

Most of the time, the RGtk2 user will be connecting to signals using 
\code{gSignalConnect}. This attaches an R function (and, optionally, some 
arbitrary "user data") to a specific \code{GObject} as a listener to the 
named signal. 

\code{gSignalHandlerBlock} and \code{gSignalHandlerUnblock} provide facilities 
for (temporarily) blocking and unblocking the calling of an R function in response to some signal. 
To permanately disconnect the handler from the object and signal, use 
\code{gSignalHandlerDisconnect}. 

A signal may be manually emitted with \code{gSignalEmit}.
The emission of a signal may be killed prematurely with \code{gSignalStopEmission}.

Detailed information about a signal may be introspected with \code{gSignalGetInfo} using
ids obtained with \code{\link{gObjectGetSignals}}.
}
\value{
\code{gSignalConnect} returns a numeric id for the signal handler. It is used for 
blocking and disconnecting the handler.

\code{gSignalGetInfo} returns detailed information about a signal. The returned list 
contains the following elements:
\item{returnType}{The return \code{\link{GType}} id of the signal}
\item{signal}{The signal id}
\item{parameters}{A list of \code{\link{GType}} ids for the parameters}
\item{objectType}{The \code{\link{GType}} id owning the signal}
\item{runFlags}{The flags determining behavior of the signal, see reference}
}
\author{Adapted from GSignal documentation by Michael Lawrence}
\references{\url{https://developer-old.gnome.org/gobject/stable/gobject-Signals.html}}
\seealso{\code{\link{GObject}}}
\keyword{interface}

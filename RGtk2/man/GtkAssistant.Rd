\alias{GtkAssistant}
\alias{gtkAssistant}
\alias{GtkAssistantPageFunc}
\alias{GtkAssistantPageType}
\name{GtkAssistant}
\title{GtkAssistant}
\description{A widget used to guide users through multi-step operations}
\section{Methods and Functions}{
\code{\link{gtkAssistantNew}(show = TRUE)}\cr
\code{\link{gtkAssistantGetCurrentPage}(object)}\cr
\code{\link{gtkAssistantSetCurrentPage}(object, page.num)}\cr
\code{\link{gtkAssistantGetNPages}(object)}\cr
\code{\link{gtkAssistantGetNthPage}(object, page.num)}\cr
\code{\link{gtkAssistantPrependPage}(object, page)}\cr
\code{\link{gtkAssistantAppendPage}(object, page)}\cr
\code{\link{gtkAssistantInsertPage}(object, page, position)}\cr
\code{\link{gtkAssistantSetForwardPageFunc}(object, page.func, data)}\cr
\code{\link{gtkAssistantSetPageType}(object, page, type)}\cr
\code{\link{gtkAssistantGetPageType}(object, page)}\cr
\code{\link{gtkAssistantSetPageTitle}(object, page, title)}\cr
\code{\link{gtkAssistantGetPageTitle}(object, page)}\cr
\code{\link{gtkAssistantSetPageHeaderImage}(object, page, pixbuf = NULL)}\cr
\code{\link{gtkAssistantGetPageHeaderImage}(object, page)}\cr
\code{\link{gtkAssistantSetPageSideImage}(object, page, pixbuf = NULL)}\cr
\code{\link{gtkAssistantGetPageSideImage}(object, page)}\cr
\code{\link{gtkAssistantSetPageComplete}(object, page, complete)}\cr
\code{\link{gtkAssistantGetPageComplete}(object, page)}\cr
\code{\link{gtkAssistantAddActionWidget}(object, child)}\cr
\code{\link{gtkAssistantRemoveActionWidget}(object, child)}\cr
\code{\link{gtkAssistantUpdateButtonsState}(object)}\cr
\code{gtkAssistant(show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----GtkAssistant}}
\section{Interfaces}{GtkAssistant implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A \code{\link{GtkAssistant}} is a widget used to represent a generally complex
operation splitted in several steps, guiding the user through its pages
and controlling the page flow to collect the necessary data.}
\section{Structures}{\describe{\item{\code{GtkAssistant}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkAssistant} is the equivalent of \code{\link{gtkAssistantNew}}.}
\section{Enums and Flags}{\describe{\item{\code{GtkAssistantPageType}}{
An enum for determining the page role inside the \code{\link{GtkAssistant}}. It's used to
handle buttons sensitivity and visibility.
  
Note that an assistant needs to end its page flow with a page of type GTK\_ASSISTANT\_PAGE\_CONFIRM
or GTK\_ASSISTANT\_PAGE\_SUMMARY to be correct.

\describe{
\item{\code{content}}{The page has regular contents.}
\item{\code{intro}}{The page contains an introduction to the assistant task.}
\item{\code{confirm}}{The page lets the user confirm or deny the changes.}
\item{\code{summary}}{The page informs the user of the changes done.}
\item{\code{progress}}{Used for tasks that take a long time to complete, blocks the assistant until the page is marked as complete.}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkAssistantPageFunc(current.page, data)}}{
A function used by \code{\link{gtkAssistantSetForwardPageFunc}} to know which
is the next page given a current one. It's called both for computing the
next page when the user presses the "forward" button and for handling
the behavior of the "last" button.

\describe{
\item{\code{current.page}}{[integer] The page number used to calculate the next page.}
\item{\code{data}}{[R object] user data.}
}

\emph{Returns:} [integer] The next page number.

}}}
\section{Signals}{\describe{
\item{\code{apply(assistant, user.data)}}{
The ::apply signal is emitted when the apply button is clicked. The default
behavior of the \code{\link{GtkAssistant}} is to switch to the page after the current page,
unless the current page is the last one.
  
A handler for the ::apply signal should carry out the actions for which the
wizard has collected data. If the action takes a long time to complete, you
might consider to put a page of type GTK\_ASSISTANT\_PAGE\_PROGRESS after the
confirmation page and handle this operation within the ::prepare signal of
the progress page.  

  Since  2.10

\describe{
\item{\code{assistant}}{[\code{\link{GtkAssistant}}]  the \code{GtkAssistant}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{cancel(assistant, user.data)}}{
The ::cancel signal is emitted when then the cancel button is clicked.  

  Since  2.10

\describe{
\item{\code{assistant}}{[\code{\link{GtkAssistant}}]  the \code{\link{GtkAssistant}}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{close(assistant, user.data)}}{
The ::close signal is emitted either when the close button of
a summary page is clicked, or when the apply button in the last
page in the flow (of type GTK\_ASSISTANT\_PAGE\_CONFIRM) is clicked.  

  Since  2.10

\describe{
\item{\code{assistant}}{[\code{\link{GtkAssistant}}]  the \code{\link{GtkAssistant}}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{prepare(assistant, page, user.data)}}{
The ::prepared signal is emitted when a new page is set as the assistant's 
current page, before making the new page visible. A handler for this signal 
can do any preparation which are necessary before showing \code{page}.  

  Since  2.10

\describe{
\item{\code{assistant}}{[\code{\link{GtkAssistant}}]  the \code{\link{GtkAssistant}}}
\item{\code{page}}{[\code{\link{GtkWidget}}]  the current page}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Style Properties}{\describe{
\item{\code{content-padding} [integer : Read]}{

Number of pixels around the content pages.  Allowed values: >= 0  Default value: 1

}
\item{\code{header-padding} [integer : Read]}{

Number of pixels around the header.  Allowed values: >= 0  Default value: 6

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkAssistant.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

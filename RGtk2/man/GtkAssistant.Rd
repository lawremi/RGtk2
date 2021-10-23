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
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkAssistant}}
\section{Interfaces}{GtkAssistant implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A \code{\link{GtkAssistant}} is a widget used to represent a generally complex
operation splitted in several steps, guiding the user through its pages
and controlling the page flow to collect the necessary data.}
\section{GtkAssistant as GtkBuildable}{The GtkAssistant implementation of the GtkBuildable interface exposes the
\code{action.area} as internal children with the name "action_area".
  
To add pages to an assistant in GtkBuilder, simply add it as a <child>
to the GtkAssistant object, and set its child properties as necessary.}
\section{Structures}{\describe{\item{\verb{GtkAssistant}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkAssistant} is the equivalent of \code{\link{gtkAssistantNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkAssistantPageType}}{
An enum for determining the page role inside the \code{\link{GtkAssistant}}. It's used to
handle buttons sensitivity and visibility.
  
Note that an assistant needs to end its page flow with a page of type GTK_ASSISTANT_PAGE_CONFIRM
or GTK_ASSISTANT_PAGE_SUMMARY to be correct.

\describe{
\item{\verb{content}}{The page has regular contents.}
\item{\verb{intro}}{The page contains an introduction to the assistant task.}
\item{\verb{confirm}}{The page lets the user confirm or deny the changes.}
\item{\verb{summary}}{The page informs the user of the changes done.}
\item{\verb{progress}}{Used for tasks that take a long time to complete, blocks the assistant until the page is marked as complete.}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkAssistantPageFunc(current.page, data)}}{
A function used by \code{\link{gtkAssistantSetForwardPageFunc}} to know which
is the next page given a current one. It's called both for computing the
next page when the user presses the "forward" button and for handling
the behavior of the "last" button.

\describe{
\item{\code{current.page}}{The page number used to calculate the next page.}
\item{\code{data}}{user data.}
}

\emph{Returns:} [integer] The next page number.

}}}
\section{Signals}{\describe{
\item{\code{apply(assistant, user.data)}}{
The ::apply signal is emitted when the apply button is clicked. The default
behavior of the \code{\link{GtkAssistant}} is to switch to the page after the current
page, unless the current page is the last one.
  
A handler for the ::apply signal should carry out the actions for which
the wizard has collected data. If the action takes a long time to complete,
you might consider to put a page of type \code{GTK_ASSISTANT_PAGE_PROGRESS}
after the confirmation page and handle this operation within the
\verb{"prepare"} signal of the progress page.
  Since 2.10

\describe{
\item{\code{assistant}}{the \code{GtkAssistant}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cancel(assistant, user.data)}}{
The ::cancel signal is emitted when then the cancel button is clicked.
  Since 2.10

\describe{
\item{\code{assistant}}{the \code{\link{GtkAssistant}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{close(assistant, user.data)}}{
The ::close signal is emitted either when the close button of
a summary page is clicked, or when the apply button in the last
page in the flow (of type \code{GTK_ASSISTANT_PAGE_CONFIRM}) is clicked.
  Since 2.10

\describe{
\item{\code{assistant}}{the \code{\link{GtkAssistant}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{prepare(assistant, page, user.data)}}{
The ::prepare signal is emitted when a new page is set as the assistant's
current page, before making the new page visible. A handler for this signal
can do any preparation which are necessary before showing \code{page}.
  Since 2.10

\describe{
\item{\code{assistant}}{the \code{\link{GtkAssistant}}}
\item{\code{page}}{the current page}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Style Properties}{\describe{
\item{\verb{content-padding} [integer : Read]}{

Number of pixels around the content pages.  Allowed values: >= 0  Default value: 1

}
\item{\verb{header-padding} [integer : Read]}{

Number of pixels around the header.  Allowed values: >= 0  Default value: 6

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkAssistant.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

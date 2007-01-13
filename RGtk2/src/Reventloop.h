#ifndef R_EVENTLOOP_H_PKG
#define R_EVENTLOOP_H_PKG

/**
 The definitions of the primary internal data structures used to implement
 the abstract event loop for R.
*/

#include "Rinternals.h"

/**
 A synonym for the main event loop structure
*/
typedef struct _R_EventLoop R_EventLoop;

/** A type definition for idle/background action routines. They take a single argument which is an
  arbitrary C value which it is expected to understand. This is specified when the action is registered
  with the event handler.
  The routine is expected to return an integer which if non-zero indicates that it should be
  re-registered so that it can be called again.
*/
typedef int (*R_IdleFunc)(void *);
/** A definition for the timer action routines. This is the same asC R_IdleFunc. */
typedef R_IdleFunc R_TimerFunc;

/**
 This is the main data structure for representing an
 internal R event loop. It has methods for running the event loop;
 processing an individual event; registering and unregistering input sources,
 idle  and timer actions;
<p>
 We can maintain a linked list of these event loop structures.

<p>
 What about releasing user-level data objects?
*/
struct _R_EventLoop {
    /** a simple, user-comprehensible name for this event loop. */
   char *name;

    /** a routine that is called <em>each</em> time the event loop is started. It can
     be used to initialize a toolkit; perform initialization for running the event loop
     such asC maintaining a stack of active instances.
    */
   void (*init)(int *argc, char ***argv);

    /** called when the event loop is terminated. This is the parallel function to
        init() */
   void (*exit)();

    /**
      the method to run the endless event loop that must be explicitly
      terminated by calling quit or exiting the process.
    */
   void (*main)(void);

   /**
      the method for processing a single event from this event source
      without blocking if there is no event on the queue.
   */
   int  (*nonBlockingIteration)();

   /**
      terminate the event loop. See main
    */
   void (*quit)();


    /** register an input source (identified by its file descriptor)
      and an event handler for it which is called any time there is
      input detected on it. The userData field allow one to specify
      arbitrary data that is passed to the handler when it is called
      and used to parameterize the actions of that handler.
      S functions can be used by specifying a suitable handler
      that treates the userData argument asC an S function and invokes it.
     */
   SEXP (*addInput)(int fd, void (*handler)(void *, int, int), void *userData);

   /**
       register a C routine that is to be invoked whenever there are no
       events pending and the event loop has "nothing" to do.
       These are essentially background events that should return control
       very rapidly.
      S functions can be used by specifying a suitable handler
      that treates the userData argument asC an S function and invokes it.
    */
   SEXP (*addIdle)(R_IdleFunc, void *userData);

   /**
     register a C routine that is to be called after interval milli-seconds.
     These are timed actions. The userData argument is passed to the
     routine when it is invoked and used to parameterize its actions.
    */
   SEXP (*addTimer)(int interval, R_TimerFunc, void *userData);

   /** unregister a handler for an input source.
     This takes the object returned by addInput() */
   int (*removeInput)(SEXP);
   /** unregister a idle/background routine
     This takes the object returned by addIdle()  to identify the
     particular.
   */
   int (*removeIdle)(SEXP);
   /** unregister a timer action routine*/
   int (*removeTimer)(SEXP);

    /**
       a field for storing data used by the event loop to perform its duties.
       This can be used in a total event-loop implementation specific manner.
       Unfortunately, without C++ classes, it is hard to get at this variable
       without asCsuming it is in the active event loop (R_eloop).
       This does allow us to place instance-specific data within each instance
       of the same event loop structure. For example, if we have two <em>copies</em>
       of the Tcl event loop, we can store different data there. As each one is made
       the active event loop, the methods can find their specific instance of the data.
       <p>
       If we wanted to make the data available to the methods without asCsuming
       the event loop is the active one, we need to add an argument to each method.
       This may be important if we want to run an event loop asC a sub-event loop
       (e.g. nest Gtk inside Tcl) using these structures and not swap it onto the
        R_eloop variable.
     */
   void *data;

    /** the next event loop in the linked list/stack. This is different from a nested event loop call
      which is handled by the C stack, not this stack.*/
   R_EventLoop *next;

    /** the previous event loop structure in the linked list of event structures maintained
      by R.
     */
   R_EventLoop *prev;
};


/**
  A global variable that holds the currently active/default
  event loop structure.
*/
extern R_EventLoop *R_eloop;

void R_mainLoop();

SEXP R_localAddIdle(R_IdleFunc f, void *userData);

/*
typedef enum {RGTK_CALLBACK, RGTK_TIMER, RGTK_IDLE} RCallbackDataType;

typedef struct {
    SEXP function;
    SEXP data;
    Rboolean     useData;

    RCallbackDataType type;
} R_CallbackData;
*/

#endif

// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package bolts:
//            BoltsExecutors, AndroidExecutors, Continuation, Capture, 
//            AggregateException

public class Task
{
    public class TaskCompletionSource
    {

        final Task this$0;

        public Task getTask()
        {
            return Task.this;
        }

        public void setCancelled()
        {
            if (!trySetCancelled())
            {
                throw new IllegalStateException("Cannot cancel a completed task.");
            } else
            {
                return;
            }
        }

        public void setError(Exception exception)
        {
            if (!trySetError(exception))
            {
                throw new IllegalStateException("Cannot set the error on a completed task.");
            } else
            {
                return;
            }
        }

        public void setResult(Object obj)
        {
            if (!trySetResult(obj))
            {
                throw new IllegalStateException("Cannot set the result of a completed task.");
            } else
            {
                return;
            }
        }

        public boolean trySetCancelled()
        {
label0:
            {
                synchronized (lock)
                {
                    if (!complete)
                    {
                        break label0;
                    }
                }
                return false;
            }
            complete = true;
            cancelled = true;
            lock.notifyAll();
            runContinuations();
            obj;
            JVM INSTR monitorexit ;
            return true;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public boolean trySetError(Exception exception)
        {
label0:
            {
                synchronized (lock)
                {
                    if (!complete)
                    {
                        break label0;
                    }
                }
                return false;
            }
            complete = true;
            error = exception;
            lock.notifyAll();
            runContinuations();
            obj;
            JVM INSTR monitorexit ;
            return true;
            exception1;
            obj;
            JVM INSTR monitorexit ;
            throw exception1;
        }

        public boolean trySetResult(Object obj)
        {
label0:
            {
                synchronized (lock)
                {
                    if (!complete)
                    {
                        break label0;
                    }
                }
                return false;
            }
            complete = true;
            result = obj;
            lock.notifyAll();
            runContinuations();
            obj1;
            JVM INSTR monitorexit ;
            return true;
            exception;
            obj1;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private TaskCompletionSource()
        {
            this$0 = Task.this;
            super();
        }

    }


    public static final ExecutorService BACKGROUND_EXECUTOR = BoltsExecutors.background();
    private static final Executor IMMEDIATE_EXECUTOR = BoltsExecutors.immediate();
    public static final Executor UI_THREAD_EXECUTOR = AndroidExecutors.uiThread();
    private boolean cancelled;
    private boolean complete;
    private List continuations;
    private Exception error;
    private final Object lock = new Object();
    private Object result;

    private Task()
    {
        continuations = new ArrayList();
    }

    public static Task call(Callable callable)
    {
        return call(callable, IMMEDIATE_EXECUTOR);
    }

    public static Task call(Callable callable, Executor executor)
    {
        TaskCompletionSource taskcompletionsource = create();
        executor.execute(new Runnable(taskcompletionsource, callable) {

            final Callable val$callable;
            final TaskCompletionSource val$tcs;

            public void run()
            {
                try
                {
                    tcs.setResult(callable.call());
                    return;
                }
                catch (Exception exception)
                {
                    tcs.setError(exception);
                }
            }

            
            {
                tcs = taskcompletionsource;
                callable = callable1;
                super();
            }
        });
        return taskcompletionsource.getTask();
    }

    public static Task callInBackground(Callable callable)
    {
        return call(callable, BACKGROUND_EXECUTOR);
    }

    public static Task cancelled()
    {
        TaskCompletionSource taskcompletionsource = create();
        taskcompletionsource.setCancelled();
        return taskcompletionsource.getTask();
    }

    private static void completeAfterTask(TaskCompletionSource taskcompletionsource, Continuation continuation, Task task, Executor executor)
    {
        executor.execute(new Runnable(continuation, task, taskcompletionsource) {

            final Continuation val$continuation;
            final Task val$task;
            final TaskCompletionSource val$tcs;

            public void run()
            {
                Task task1 = (Task)continuation.then(task);
                if (task1 == null)
                {
                    try
                    {
                        tcs.setResult(null);
                        return;
                    }
                    catch (Exception exception)
                    {
                        tcs.setError(exception);
                    }
                    break MISSING_BLOCK_LABEL_53;
                }
                task1.continueWith(new Continuation() {

                    final _cls10 this$0;

                    public volatile Object then(Task task)
                        throws Exception
                    {
                        return then(task);
                    }

                    public Void then(Task task)
                    {
                        if (task.isCancelled())
                        {
                            tcs.setCancelled();
                        } else
                        if (task.isFaulted())
                        {
                            tcs.setError(task.getError());
                        } else
                        {
                            tcs.setResult(task.getResult());
                        }
                        return null;
                    }

            
            {
                this$0 = _cls10.this;
                super();
            }
                });
                return;
            }

            
            {
                continuation = continuation1;
                task = task1;
                tcs = taskcompletionsource;
                super();
            }
        });
    }

    private static void completeImmediately(TaskCompletionSource taskcompletionsource, Continuation continuation, Task task, Executor executor)
    {
        executor.execute(new Runnable(continuation, task, taskcompletionsource) {

            final Continuation val$continuation;
            final Task val$task;
            final TaskCompletionSource val$tcs;

            public void run()
            {
                try
                {
                    Object obj = continuation.then(task);
                    tcs.setResult(obj);
                    return;
                }
                catch (Exception exception)
                {
                    tcs.setError(exception);
                }
            }

            
            {
                continuation = continuation1;
                task = task1;
                tcs = taskcompletionsource;
                super();
            }
        });
    }

    public static TaskCompletionSource create()
    {
        Task task = new Task();
        task.getClass();
        return task. new TaskCompletionSource();
    }

    public static Task forError(Exception exception)
    {
        TaskCompletionSource taskcompletionsource = create();
        taskcompletionsource.setError(exception);
        return taskcompletionsource.getTask();
    }

    public static Task forResult(Object obj)
    {
        TaskCompletionSource taskcompletionsource = create();
        taskcompletionsource.setResult(obj);
        return taskcompletionsource.getTask();
    }

    private void runContinuations()
    {
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = continuations.iterator();
_L1:
        Continuation continuation;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_71;
        }
        continuation = (Continuation)iterator.next();
        continuation.then(this);
          goto _L1
        RuntimeException runtimeexception;
        runtimeexception;
        throw runtimeexception;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        throw new RuntimeException(exception1);
        continuations = null;
        obj;
        JVM INSTR monitorexit ;
    }

    public static Task whenAll(Collection collection)
    {
        if (collection.size() == 0)
        {
            return forResult(null);
        }
        TaskCompletionSource taskcompletionsource = create();
        ArrayList arraylist = new ArrayList();
        Object obj = new Object();
        AtomicInteger atomicinteger = new AtomicInteger(collection.size());
        AtomicBoolean atomicboolean = new AtomicBoolean(false);
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); ((Task)iterator.next()).continueWith(new Continuation(obj, arraylist, atomicboolean, atomicinteger, taskcompletionsource) {

        final TaskCompletionSource val$allFinished;
        final AtomicInteger val$count;
        final Object val$errorLock;
        final ArrayList val$errors;
        final AtomicBoolean val$isCancelled;

        public volatile Object then(Task task)
            throws Exception
        {
            return then(task);
        }

        public Void then(Task task)
        {
            if (task.isFaulted())
            {
                synchronized (errorLock)
                {
                    errors.add(task.getError());
                }
            }
            if (task.isCancelled())
            {
                isCancelled.set(true);
            }
            if (count.decrementAndGet() == 0)
            {
                if (errors.size() == 0)
                {
                    break MISSING_BLOCK_LABEL_119;
                }
                if (errors.size() != 1)
                {
                    break MISSING_BLOCK_LABEL_99;
                }
                allFinished.setError((Exception)errors.get(0));
            }
            return null;
            exception;
            obj1;
            JVM INSTR monitorexit ;
            throw exception;
            allFinished.setError(new AggregateException(errors));
            return null;
            if (isCancelled.get())
            {
                allFinished.setCancelled();
                return null;
            } else
            {
                allFinished.setResult(null);
                return null;
            }
        }

            
            {
                errorLock = obj;
                errors = arraylist;
                isCancelled = atomicboolean;
                count = atomicinteger;
                allFinished = taskcompletionsource;
                super();
            }
    })) { }
        return taskcompletionsource.getTask();
    }

    public Task cast()
    {
        return this;
    }

    public Task continueWhile(Callable callable, Continuation continuation)
    {
        return continueWhile(callable, continuation, IMMEDIATE_EXECUTOR);
    }

    public Task continueWhile(final Callable predicate, final Continuation continuation, final Executor executor)
    {
        final Capture predicateContinuation = new Capture();
        predicateContinuation.set(new Continuation() {

            final Task this$0;
            final Continuation val$continuation;
            final Executor val$executor;
            final Callable val$predicate;
            final Capture val$predicateContinuation;

            public Task then(Task task)
                throws Exception
            {
                if (((Boolean)predicate.call()).booleanValue())
                {
                    return Task.forResult(null).onSuccessTask(continuation, executor).onSuccessTask((Continuation)predicateContinuation.get(), executor);
                } else
                {
                    return Task.forResult(null);
                }
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            
            {
                this$0 = Task.this;
                predicate = callable;
                continuation = continuation1;
                executor = executor1;
                predicateContinuation = capture;
                super();
            }
        });
        return makeVoid().continueWithTask((Continuation)predicateContinuation.get(), executor);
    }

    public Task continueWith(Continuation continuation)
    {
        return continueWith(continuation, IMMEDIATE_EXECUTOR);
    }

    public Task continueWith(final Continuation continuation, final Executor executor)
    {
        final TaskCompletionSource tcs = create();
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = isCompleted();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        continuations.add(new Continuation() {

            final Task this$0;
            final Continuation val$continuation;
            final Executor val$executor;
            final TaskCompletionSource val$tcs;

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            public Void then(Task task)
            {
                Task.completeImmediately(tcs, continuation, task, executor);
                return null;
            }

            
            {
                this$0 = Task.this;
                tcs = taskcompletionsource;
                continuation = continuation1;
                executor = executor1;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        if (flag)
        {
            completeImmediately(tcs, continuation, this, executor);
        }
        return tcs.getTask();
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Task continueWithTask(Continuation continuation)
    {
        return continueWithTask(continuation, IMMEDIATE_EXECUTOR);
    }

    public Task continueWithTask(final Continuation continuation, final Executor executor)
    {
        final TaskCompletionSource tcs = create();
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = isCompleted();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        continuations.add(new Continuation() {

            final Task this$0;
            final Continuation val$continuation;
            final Executor val$executor;
            final TaskCompletionSource val$tcs;

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            public Void then(Task task)
            {
                Task.completeAfterTask(tcs, continuation, task, executor);
                return null;
            }

            
            {
                this$0 = Task.this;
                tcs = taskcompletionsource;
                continuation = continuation1;
                executor = executor1;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        if (flag)
        {
            completeAfterTask(tcs, continuation, this, executor);
        }
        return tcs.getTask();
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Exception getError()
    {
        Exception exception1;
        synchronized (lock)
        {
            exception1 = error;
        }
        return exception1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object getResult()
    {
        Object obj1;
        synchronized (lock)
        {
            obj1 = result;
        }
        return obj1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isCancelled()
    {
        boolean flag;
        synchronized (lock)
        {
            flag = cancelled;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isCompleted()
    {
        boolean flag;
        synchronized (lock)
        {
            flag = complete;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isFaulted()
    {
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (error != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Task makeVoid()
    {
        return continueWithTask(new Continuation() {

            final Task this$0;

            public Task then(Task task)
                throws Exception
            {
                if (task.isCancelled())
                {
                    return Task.cancelled();
                }
                if (task.isFaulted())
                {
                    return Task.forError(task.getError());
                } else
                {
                    return Task.forResult(null);
                }
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            
            {
                this$0 = Task.this;
                super();
            }
        });
    }

    public Task onSuccess(Continuation continuation)
    {
        return onSuccess(continuation, IMMEDIATE_EXECUTOR);
    }

    public Task onSuccess(final Continuation continuation, Executor executor)
    {
        return continueWithTask(new Continuation() {

            final Task this$0;
            final Continuation val$continuation;

            public Task then(Task task)
            {
                if (task.isFaulted())
                {
                    return Task.forError(task.getError());
                }
                if (task.isCancelled())
                {
                    return Task.cancelled();
                } else
                {
                    return task.continueWith(continuation);
                }
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            
            {
                this$0 = Task.this;
                continuation = continuation1;
                super();
            }
        }, executor);
    }

    public Task onSuccessTask(Continuation continuation)
    {
        return onSuccessTask(continuation, IMMEDIATE_EXECUTOR);
    }

    public Task onSuccessTask(final Continuation continuation, Executor executor)
    {
        return continueWithTask(new Continuation() {

            final Task this$0;
            final Continuation val$continuation;

            public Task then(Task task)
            {
                if (task.isFaulted())
                {
                    return Task.forError(task.getError());
                }
                if (task.isCancelled())
                {
                    return Task.cancelled();
                } else
                {
                    return task.continueWithTask(continuation);
                }
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            
            {
                this$0 = Task.this;
                continuation = continuation1;
                super();
            }
        }, executor);
    }

    public void waitForCompletion()
        throws InterruptedException
    {
        synchronized (lock)
        {
            if (!isCompleted())
            {
                lock.wait();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }







/*
    static boolean access$402(Task task, boolean flag)
    {
        task.complete = flag;
        return flag;
    }

*/


/*
    static boolean access$502(Task task, boolean flag)
    {
        task.cancelled = flag;
        return flag;
    }

*/



/*
    static Object access$702(Task task, Object obj)
    {
        task.result = obj;
        return obj;
    }

*/


/*
    static Exception access$802(Task task, Exception exception)
    {
        task.error = exception;
        return exception;
    }

*/
}

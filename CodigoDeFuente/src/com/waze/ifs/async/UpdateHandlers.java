// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.Random;
import junit.framework.Assert;

public class UpdateHandlers
{
    public static class TestThis
    {

        Handler h1;
        Handler h2;
        Handler hString;
        Random rand;
        String test_messagesString;
        int test_numMessages1;
        int test_numMessages2;

        private void testHandlerInsertion()
        {
            int i = rand.nextInt();
            UpdateHandlers updatehandlers = new UpdateHandlers();
            test_numMessages1 = 0;
            updatehandlers.setUpdateHandler(i, h1);
            updatehandlers.sendUpdateMessage(i, null);
            Assert.assertEquals(1, test_numMessages1);
        }

        private void testHandlerInsertionAndRemoval()
        {
            int i = rand.nextInt();
            UpdateHandlers updatehandlers = new UpdateHandlers();
            test_numMessages1 = 0;
            updatehandlers.setUpdateHandler(i, h1);
            updatehandlers.unsetUpdateHandler(i, h1);
            updatehandlers.sendUpdateMessage(i, null);
            Assert.assertEquals(0, test_numMessages1);
        }

        private void testHandlerString()
        {
            int i = rand.nextInt();
            UpdateHandlers updatehandlers = new UpdateHandlers();
            test_messagesString = null;
            updatehandlers.setUpdateHandler(i, hString);
            Bundle bundle = new Bundle();
            bundle.putString("string", "test");
            updatehandlers.sendUpdateMessage(i, bundle);
            Assert.assertEquals("test", test_messagesString);
        }

        private void testHandlerTwoInsertions()
        {
            int i = rand.nextInt();
            int j = rand.nextInt();
            UpdateHandlers updatehandlers = new UpdateHandlers();
            test_numMessages1 = 0;
            updatehandlers.setUpdateHandler(i, h1);
            updatehandlers.setUpdateHandler(j, h2);
            updatehandlers.sendUpdateMessage(i, null);
            Assert.assertEquals(1, test_numMessages1);
            Assert.assertEquals(0, test_numMessages2);
            updatehandlers.sendUpdateMessage(j, null);
            Assert.assertEquals(1, test_numMessages1);
            Assert.assertEquals(1, test_numMessages2);
        }

        public TestThis()
        {
            test_numMessages1 = 0;
            h1 = new _cls1();
            test_numMessages2 = 0;
            h2 = new _cls2();
            hString = new _cls3();
            rand = new Random();
            testHandlerInsertion();
            testHandlerInsertionAndRemoval();
            testHandlerTwoInsertions();
            testHandlerString();
        }
    }

    static class UpdateHandler
    {

        final WeakReference _handler;
        UpdateHandler next;

        public void sendMessage(int i, int j, int k)
        {
            if (_handler != null)
            {
                Handler handler = (Handler)_handler.get();
                if (handler != null)
                {
                    handler.sendMessage(handler.obtainMessage(i, j, k));
                }
            }
        }

        void sendMessage(int i, Bundle bundle)
        {
            if (_handler != null)
            {
                Handler handler = (Handler)_handler.get();
                if (handler != null)
                {
                    Message message = handler.obtainMessage(i);
                    message.setData(bundle);
                    handler.sendMessage(message);
                }
            }
        }

        boolean shouldRemove(Handler handler)
        {
            Handler handler1;
            if (_handler != null)
            {
                if ((handler1 = (Handler)_handler.get()) != null && handler1 != handler)
                {
                    return false;
                }
            }
            return true;
        }

        UpdateHandler(Handler handler)
        {
            next = null;
            _handler = new WeakReference(handler);
        }
    }


    private SparseArray updateHandlers;

    public UpdateHandlers()
    {
        updateHandlers = new SparseArray();
    }

    public void sendUpdateMessage(int i, int j, int k)
    {
        UpdateHandler updatehandler = (UpdateHandler)updateHandlers.get(i);
        do
        {
            if (updatehandler == null)
            {
                return;
            }
            updatehandler.sendMessage(i, j, k);
            updatehandler = updatehandler.next;
        } while (true);
    }

    public void sendUpdateMessage(int i, Bundle bundle)
    {
        UpdateHandler updatehandler = (UpdateHandler)updateHandlers.get(i);
        do
        {
            if (updatehandler == null)
            {
                return;
            }
            updatehandler.sendMessage(i, bundle);
            updatehandler = updatehandler.next;
        } while (true);
    }

    public void setUpdateHandler(int i, Handler handler)
    {
        UpdateHandler updatehandler = (UpdateHandler)updateHandlers.get(i);
        UpdateHandler updatehandler1 = new UpdateHandler(handler);
        updatehandler1.next = updatehandler;
        updateHandlers.put(i, updatehandler1);
    }

    public void unsetUpdateHandler(int i, Handler handler)
    {
        UpdateHandler updatehandler = (UpdateHandler)updateHandlers.get(i);
        UpdateHandler updatehandler1 = null;
        do
        {
            if (updatehandler == null)
            {
                return;
            }
            if (updatehandler.shouldRemove(handler))
            {
                if (updatehandler1 == null)
                {
                    updateHandlers.put(i, updatehandler.next);
                } else
                {
                    updatehandler1.next = updatehandler.next;
                }
            } else
            {
                updatehandler1 = updatehandler;
            }
            updatehandler = updatehandler.next;
        } while (true);
    }

    // Unreferenced inner class com/waze/ifs/async/UpdateHandlers$TestThis$1

/* anonymous class */
    class TestThis._cls1 extends Handler
    {

        final TestThis this$1;

        public boolean sendMessageAtTime(Message message, long l)
        {
            TestThis testthis = TestThis.this;
            testthis.test_numMessages1 = 1 + testthis.test_numMessages1;
            return true;
        }

            
            {
                this$1 = TestThis.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/ifs/async/UpdateHandlers$TestThis$2

/* anonymous class */
    class TestThis._cls2 extends Handler
    {

        final TestThis this$1;

        public boolean sendMessageAtTime(Message message, long l)
        {
            TestThis testthis = TestThis.this;
            testthis.test_numMessages2 = 1 + testthis.test_numMessages2;
            return true;
        }

            
            {
                this$1 = TestThis.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/ifs/async/UpdateHandlers$TestThis$3

/* anonymous class */
    class TestThis._cls3 extends Handler
    {

        final TestThis this$1;

        public boolean sendMessageAtTime(Message message, long l)
        {
            test_messagesString = message.getData().getString("string");
            return true;
        }

            
            {
                this$1 = TestThis.this;
                super();
            }
    }

}

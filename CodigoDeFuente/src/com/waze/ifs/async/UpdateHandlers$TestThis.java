// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.util.Random;
import junit.framework.Assert;

// Referenced classes of package com.waze.ifs.async:
//            UpdateHandlers

public static class testHandlerString
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

    public _cls3.this._cls1()
    {
        test_numMessages1 = 0;
        h1 = new Handler() {

            final UpdateHandlers.TestThis this$1;

            public boolean sendMessageAtTime(Message message, long l)
            {
                UpdateHandlers.TestThis testthis = UpdateHandlers.TestThis.this;
                testthis.test_numMessages1 = 1 + testthis.test_numMessages1;
                return true;
            }

            
            {
                this$1 = UpdateHandlers.TestThis.this;
                super();
            }
        };
        test_numMessages2 = 0;
        h2 = new Handler() {

            final UpdateHandlers.TestThis this$1;

            public boolean sendMessageAtTime(Message message, long l)
            {
                UpdateHandlers.TestThis testthis = UpdateHandlers.TestThis.this;
                testthis.test_numMessages2 = 1 + testthis.test_numMessages2;
                return true;
            }

            
            {
                this$1 = UpdateHandlers.TestThis.this;
                super();
            }
        };
        hString = new Handler() {

            final UpdateHandlers.TestThis this$1;

            public boolean sendMessageAtTime(Message message, long l)
            {
                test_messagesString = message.getData().getString("string");
                return true;
            }

            
            {
                this$1 = UpdateHandlers.TestThis.this;
                super();
            }
        };
        rand = new Random();
        testHandlerInsertion();
        testHandlerInsertionAndRemoval();
        testHandlerTwoInsertions();
        testHandlerString();
    }
}

// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.GraphUser;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.facebook:
//            Session, Request, HttpMethod, Response, 
//            FacebookRequestError, FacebookException, AccessTokenSource, AccessToken, 
//            SessionState, TokenCachingStrategy

public class TestSession extends Session
{
    private static final class Mode extends Enum
    {

        private static final Mode ENUM$VALUES[];
        public static final Mode PRIVATE;
        public static final Mode SHARED;

        public static Mode valueOf(String s)
        {
            return (Mode)Enum.valueOf(com/facebook/TestSession$Mode, s);
        }

        public static Mode[] values()
        {
            Mode amode[] = ENUM$VALUES;
            int i = amode.length;
            Mode amode1[] = new Mode[i];
            System.arraycopy(amode, 0, amode1, 0, i);
            return amode1;
        }

        static 
        {
            PRIVATE = new Mode("PRIVATE", 0);
            SHARED = new Mode("SHARED", 1);
            Mode amode[] = new Mode[2];
            amode[0] = PRIVATE;
            amode[1] = SHARED;
            ENUM$VALUES = amode;
        }

        private Mode(String s, int i)
        {
            super(s, i);
        }
    }

    private static interface TestAccount
        extends GraphObject
    {

        public abstract String getAccessToken();

        public abstract String getId();

        public abstract String getName();

        public abstract void setName(String s);
    }

    private static interface TestAccountsResponse
        extends GraphObject
    {

        public abstract GraphObjectList getData();
    }

    private static final class TestTokenCachingStrategy extends TokenCachingStrategy
    {

        private Bundle bundle;

        public void clear()
        {
            bundle = null;
        }

        public Bundle load()
        {
            return bundle;
        }

        public void save(Bundle bundle1)
        {
            bundle = bundle1;
        }

        private TestTokenCachingStrategy()
        {
        }

        TestTokenCachingStrategy(TestTokenCachingStrategy testtokencachingstrategy)
        {
            this();
        }
    }


    static final boolean $assertionsDisabled = false;
    private static final String LOG_TAG = "FacebookSDK.TestSession";
    private static Map appTestAccounts;
    private static final long serialVersionUID = 1L;
    private static String testApplicationId;
    private static String testApplicationSecret;
    private final Mode mode;
    private final List requestedPermissions;
    private final String sessionUniqueUserTag;
    private String testAccountId;
    private String testAccountUserName;
    private boolean wasAskedToExtendAccessToken;

    TestSession(Activity activity, List list, TokenCachingStrategy tokencachingstrategy, String s, Mode mode1)
    {
        super(activity, testApplicationId, tokencachingstrategy);
        Validate.notNull(list, "permissions");
        Validate.notNullOrEmpty(testApplicationId, "testApplicationId");
        Validate.notNullOrEmpty(testApplicationSecret, "testApplicationSecret");
        sessionUniqueUserTag = s;
        mode = mode1;
        requestedPermissions = list;
    }

    public static TestSession createSessionWithPrivateUser(Activity activity, List list)
    {
        return createTestSession(activity, list, Mode.PRIVATE, null);
    }

    public static TestSession createSessionWithSharedUser(Activity activity, List list)
    {
        return createSessionWithSharedUser(activity, list, null);
    }

    public static TestSession createSessionWithSharedUser(Activity activity, List list, String s)
    {
        return createTestSession(activity, list, Mode.SHARED, s);
    }

    private TestAccount createTestAccountAndFinishAuth()
    {
        Bundle bundle = new Bundle();
        bundle.putString("installed", "true");
        bundle.putString("permissions", getPermissionsString());
        bundle.putString("access_token", getAppAccessToken());
        if (mode == Mode.SHARED)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = getSharedTestAccountIdentifier();
            bundle.putString("name", String.format("Shared %s Testuser", aobj1));
        }
        Object aobj[] = new Object[1];
        aobj[0] = testApplicationId;
        Response response = (new Request(null, String.format("%s/accounts/test-users", aobj), bundle, HttpMethod.POST)).executeAndWait();
        FacebookRequestError facebookrequesterror = response.getError();
        TestAccount testaccount = (TestAccount)response.getGraphObjectAs(com/facebook/TestSession$TestAccount);
        if (facebookrequesterror != null)
        {
            finishAuthOrReauth(null, facebookrequesterror.getException());
            return null;
        }
        if (!$assertionsDisabled && testaccount == null)
        {
            throw new AssertionError();
        }
        if (mode == Mode.SHARED)
        {
            testaccount.setName(bundle.getString("name"));
            storeTestAccount(testaccount);
        }
        finishAuthWithTestAccount(testaccount);
        return testaccount;
    }

    private static TestSession createTestSession(Activity activity, List list, Mode mode1, String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        if (Utility.isNullOrEmpty(testApplicationId) || Utility.isNullOrEmpty(testApplicationSecret))
        {
            throw new FacebookException("Must provide app ID and secret");
        }
        break MISSING_BLOCK_LABEL_39;
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        TestSession testsession;
        if (Utility.isNullOrEmpty(list))
        {
            list = Arrays.asList(new String[] {
                "email", "publish_actions"
            });
        }
        TestTokenCachingStrategy testtokencachingstrategy = new TestTokenCachingStrategy(null);
        testsession = new TestSession(activity, list, testtokencachingstrategy, s, mode1);
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return testsession;
    }

    private void deleteTestAccount(String s, String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("access_token", s1);
        Response response = (new Request(null, s, bundle, HttpMethod.DELETE)).executeAndWait();
        FacebookRequestError facebookrequesterror = response.getError();
        GraphObject graphobject = response.getGraphObject();
        if (facebookrequesterror != null)
        {
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = facebookrequesterror.getException().toString();
            Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: %s", aobj));
        } else
        if (graphobject.getProperty("FACEBOOK_NON_JSON_RESULT") == Boolean.valueOf(false) || graphobject.getProperty("success") == Boolean.valueOf(false))
        {
            Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: unknown reason", new Object[] {
                s
            }));
            return;
        }
    }

    private void findOrCreateSharedTestAccount()
    {
        TestAccount testaccount = findTestAccountMatchingIdentifier(getSharedTestAccountIdentifier());
        if (testaccount != null)
        {
            finishAuthWithTestAccount(testaccount);
            return;
        } else
        {
            createTestAccountAndFinishAuth();
            return;
        }
    }

    private static TestAccount findTestAccountMatchingIdentifier(String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        Iterator iterator;
        retrieveTestAccountsForAppIfNeeded();
        iterator = appTestAccounts.values().iterator();
_L4:
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        TestAccount testaccount = null;
_L3:
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return testaccount;
_L2:
        boolean flag1;
        testaccount = (TestAccount)iterator.next();
        flag1 = testaccount.getName().contains(s);
        if (!flag1) goto _L4; else goto _L3
        Exception exception;
        exception;
        throw exception;
    }

    private void finishAuthWithTestAccount(TestAccount testaccount)
    {
        testAccountId = testaccount.getId();
        testAccountUserName = testaccount.getName();
        finishAuthOrReauth(AccessToken.createFromString(testaccount.getAccessToken(), requestedPermissions, AccessTokenSource.TEST_USER), null);
    }

    static final String getAppAccessToken()
    {
        return (new StringBuilder(String.valueOf(testApplicationId))).append("|").append(testApplicationSecret).toString();
    }

    private String getPermissionsString()
    {
        return TextUtils.join(",", requestedPermissions);
    }

    private String getSharedTestAccountIdentifier()
    {
        long l = 0xffffffffL & (long)getPermissionsString().hashCode();
        long l1;
        if (sessionUniqueUserTag != null)
        {
            l1 = 0xffffffffL & (long)sessionUniqueUserTag.hashCode();
        } else
        {
            l1 = 0L;
        }
        return validNameStringFromInteger(l ^ l1);
    }

    public static String getTestApplicationId()
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        String s = testApplicationId;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String getTestApplicationSecret()
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        String s = testApplicationSecret;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    private static void populateTestAccounts(Collection collection, GraphObject graphobject)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        Iterator iterator = collection.iterator();
_L1:
        boolean flag = iterator.hasNext();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return;
        TestAccount testaccount = (TestAccount)iterator.next();
        testaccount.setName(((GraphUser)graphobject.getPropertyAs(testaccount.getId(), com/facebook/model/GraphUser)).getName());
        storeTestAccount(testaccount);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    private static void retrieveTestAccountsForAppIfNeeded()
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        Map map = appTestAccounts;
        if (map == null) goto _L2; else goto _L1
_L1:
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return;
_L2:
        List list;
        appTestAccounts = new HashMap();
        Request.setDefaultBatchApplicationId(testApplicationId);
        Bundle bundle = new Bundle();
        bundle.putString("access_token", getAppAccessToken());
        Request request = new Request(null, "app/accounts/test-users", bundle, null);
        request.setBatchEntryName("testUsers");
        request.setBatchEntryOmitResultOnSuccess(false);
        Bundle bundle1 = new Bundle();
        bundle1.putString("access_token", getAppAccessToken());
        bundle1.putString("ids", "{result=testUsers:$.data.*.id}");
        bundle1.putString("fields", "name");
        Request request1 = new Request(null, "", bundle1, null);
        request1.setBatchEntryDependsOn("testUsers");
        list = Request.executeBatchAndWait(new Request[] {
            request, request1
        });
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        if (list.size() == 2)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        throw new FacebookException("Unexpected number of results from TestUsers batch query");
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        populateTestAccounts(((TestAccountsResponse)((Response)list.get(0)).getGraphObjectAs(com/facebook/TestSession$TestAccountsResponse)).getData(), ((Response)list.get(1)).getGraphObject());
          goto _L1
    }

    public static void setTestApplicationId(String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        if (testApplicationId != null && !testApplicationId.equals(s))
        {
            throw new FacebookException("Can't have more than one test application ID");
        }
        break MISSING_BLOCK_LABEL_36;
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        testApplicationId = s;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
    }

    public static void setTestApplicationSecret(String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        if (testApplicationSecret != null && !testApplicationSecret.equals(s))
        {
            throw new FacebookException("Can't have more than one test application secret");
        }
        break MISSING_BLOCK_LABEL_36;
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        testApplicationSecret = s;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
    }

    private static void storeTestAccount(TestAccount testaccount)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        appTestAccounts.put(testaccount.getId(), testaccount);
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private String validNameStringFromInteger(long l)
    {
        String s = Long.toString(l);
        StringBuilder stringbuilder = new StringBuilder("Perm");
        int i = 0;
        char ac[] = s.toCharArray();
        int j = ac.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                return stringbuilder.toString();
            }
            char c = ac[k];
            if (c == i)
            {
                c += '\n';
            }
            stringbuilder.append((char)(-48 + (c + 97)));
            i = c;
            k++;
        } while (true);
    }

    void authorize(Session.AuthorizationRequest authorizationrequest)
    {
        if (mode == Mode.PRIVATE)
        {
            createTestAccountAndFinishAuth();
            return;
        } else
        {
            findOrCreateSharedTestAccount();
            return;
        }
    }

    void extendAccessToken()
    {
        wasAskedToExtendAccessToken = true;
        super.extendAccessToken();
    }

    void fakeTokenRefreshAttempt()
    {
        setCurrentTokenRefreshRequest(new Session.TokenRefreshRequest(this));
    }

    void forceExtendAccessToken(boolean flag)
    {
        AccessToken accesstoken = getTokenInfo();
        setTokenInfo(new AccessToken(accesstoken.getToken(), new Date(), accesstoken.getPermissions(), accesstoken.getDeclinedPermissions(), AccessTokenSource.TEST_USER, new Date(0L)));
        setLastAttemptedTokenExtendDate(new Date(0L));
    }

    public final String getTestUserId()
    {
        return testAccountId;
    }

    public final String getTestUserName()
    {
        return testAccountUserName;
    }

    boolean getWasAskedToExtendAccessToken()
    {
        return wasAskedToExtendAccessToken;
    }

    void postStateChange(SessionState sessionstate, SessionState sessionstate1, Exception exception)
    {
        String s = testAccountId;
        super.postStateChange(sessionstate, sessionstate1, exception);
        if (sessionstate1.isClosed() && s != null && mode == Mode.PRIVATE)
        {
            deleteTestAccount(s, getAppAccessToken());
        }
    }

    boolean shouldExtendAccessToken()
    {
        boolean flag = super.shouldExtendAccessToken();
        wasAskedToExtendAccessToken = false;
        return flag;
    }

    public final String toString()
    {
        String s = super.toString();
        return (new StringBuilder()).append("{TestSession").append(" testUserId:").append(testAccountId).append(" ").append(s).append("}").toString();
    }

    static 
    {
        boolean flag;
        if (!com/facebook/TestSession.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}

// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;


public class Constants
{

    protected static final String EXTRA_ALERT = "alert";
    protected static final String EXTRA_ALERT_ACTION = "WazeUrl";
    protected static final String EXTRA_ALERT_CONSTRUCTION_INSTRUCTIONS = "constructionInstructions";
    protected static final String EXTRA_ALERT_TYPE = "type";
    protected static final String EXTRA_APP_PENDING_INTENT = "app";
    protected static final String EXTRA_BADGE = "badge";
    protected static final String EXTRA_CONSTRUCTION_INSTRUCTIONS = "constructionInstructions";
    protected static final String EXTRA_ERROR = "error";
    protected static final String EXTRA_REGISTRATION_ID = "registration_id";
    protected static final String EXTRA_SENDER = "sender";
    protected static final String EXTRA_UNREGISTERED = "unregistered";
    protected static final String GET_LOCATION_ACTION = "?a=getlocation";
    public static final String GOOGLE_NOW_ID = "1005457359603-qagqlbukkg3f292jhjglersblhodeuud.apps.googleusercontent.com";
    protected static final String INBOX_ACTION = "?inbox_message_id=";
    protected static final String INTENT_GCM_MESSAGE = "com.google.android.c2dm.intent.RECEIVE";
    protected static final String INTENT_GCM_REGISTRATION = "com.google.android.c2dm.intent.REGISTER";
    protected static final String INTENT_GCM_REGISTRATION_CALLBACK = "com.google.android.c2dm.intent.REGISTRATION";
    protected static final String INTENT_GCM_RETRY = "com.google.android.gcm.intent.RETRY";
    protected static final String INTENT_GCM_UNREGISTRATION = "com.google.android.c2dm.intent.UNREGISTER";
    protected static final String LOG_TAG = "Push Service";
    protected static final int NOTIFICATION_ID = 256;
    protected static final String NOTIFICATION_TAG = "Push Notifications";
    protected static final String NOTIFICATION_TITLE = "Waze";
    protected static final String PICKUP_ACTION = "?a=pickup";
    protected static final String PREF_NAME = "com.waze.push";
    protected static final String PREF_PROPERTY_APP_VERSION = "appVersion";
    protected static final String PREF_PROPERTY_REG_ID = "regId";
    protected static final String SENDER_ID = "1005457359603";
    protected static final String URL_ACTION_PREFIX = "waze://";
    protected static final String URL_NO_LOGIN = "&nl=T";
    protected static final String URL_POPUP_MESSAGE = "popup_message=";

    public Constants()
    {
    }
}

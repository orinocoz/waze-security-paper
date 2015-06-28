// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit;


public interface IAAM2MediaInfoReqListener
{

    public abstract void onAAM2ReceiveTrackInfoRequest(int i, long l);

    public abstract void onAAM2ReceiveTrackInfoSettingRequest();
}

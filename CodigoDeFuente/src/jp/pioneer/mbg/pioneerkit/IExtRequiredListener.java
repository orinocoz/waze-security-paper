// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit;


// Referenced classes of package jp.pioneer.mbg.pioneerkit:
//            ExtCertifiedInfo, ExtDeviceSpecInfo

public interface IExtRequiredListener
{

    public abstract void onCertifiedResult(boolean flag);

    public abstract void onReceiveParkingInfo(boolean flag);

    public abstract ExtCertifiedInfo onRequireCertification();

    public abstract void onStartAdvancedAppMode(ExtDeviceSpecInfo extdevicespecinfo);

    public abstract void onStopAdvancedAppMode();
}

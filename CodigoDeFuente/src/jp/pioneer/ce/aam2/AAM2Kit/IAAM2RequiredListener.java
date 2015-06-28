// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit:
//            AAM2CertifiedInfo, AAM2MainUnitSpecInfo

public interface IAAM2RequiredListener
{

    public abstract void onAAM2CertifiedResult(boolean flag);

    public abstract void onAAM2ReceiveDriveStopping(boolean flag);

    public abstract void onAAM2ReceiveParkingSwitch(boolean flag);

    public abstract AAM2CertifiedInfo onAAM2RequireCertification();

    public abstract void onAAM2StartAdvancedAppMode(AAM2MainUnitSpecInfo aam2mainunitspecinfo);

    public abstract void onAAM2StopAdvancedAppMode();
}

.class public abstract Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;
.super Landroid/os/Binder;

# interfaces
.implements Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p0, p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;

    if-eqz v1, :cond_1

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;

    goto :goto_0

    :cond_1
    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/i;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/i;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(I)V

    goto :goto_0

    :sswitch_2
    const-string v3, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :sswitch_3
    const-string v3, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :sswitch_4
    const-string v3, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->b(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :sswitch_5
    const-string v1, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;->c:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;

    :cond_6
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Z)V

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->b:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;

    :cond_8
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->b(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->b(Z)V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->e:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    :cond_a
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a()V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->c(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a([B)V

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    :cond_b
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->b()V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->b([B)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(B[B)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->c()V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->d()V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {p0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->c(Z)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(II)V

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->e()V

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {p0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->d(Z)V

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {p0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->e(Z)V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->c([B)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;
.super Landroid/os/Binder;

# interfaces
.implements Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p0, p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/os/IBinder;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_1

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    goto :goto_0

    :cond_1
    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/l;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/l;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Landroid/os/IBinder;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Landroid/os/IBinder;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->d()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->e()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->f()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->c(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->g()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->h()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->i()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->j()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->c(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    :cond_a
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->d(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    :cond_b
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->e(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->f(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    :cond_d
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->g(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->k()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Landroid/os/IBinder;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->c(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_22
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    :cond_e
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->h(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_23
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    :cond_f
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->i(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_24
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->m()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_10

    move v0, v1

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_25
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_11

    move v0, v1

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    move v0, v1

    :cond_12
    invoke-virtual {p0, v2, v3, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(JZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_27
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    move v0, v1

    :cond_13
    invoke-virtual {p0, v2, v3, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(JZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->c(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(B[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2c
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_14

    move v0, v1

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;->a(Landroid/os/IBinder;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->d(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->e(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2f
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->n()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_15

    move v0, v1

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_30
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->d(I)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_16

    move v0, v1

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_31
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->e(I)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_17

    move v0, v1

    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_32
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->o()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_18

    move v0, v1

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_33
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->p()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_19

    move v0, v1

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->q()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_35
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->j(Z)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1a

    move v0, v1

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1b
    move v2, v0

    goto :goto_1

    :sswitch_36
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1c

    move v0, v1

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_37
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->r()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1d

    move v0, v1

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_38
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    move v0, v1

    :cond_1e
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->k(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_39
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->s()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1f

    move v0, v1

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3a
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    move v0, v1

    :cond_20
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->l(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3b
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->f(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_21

    move v0, v1

    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->t()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3e
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    move v0, v1

    :cond_22
    invoke-virtual {p0, v2, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3f
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    move v0, v1

    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->a(ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_40
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    move v0, v1

    :cond_24
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->m(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_41
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    move v0, v1

    :cond_25
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->n(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_42
    const-string v2, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    move v0, v1

    :cond_26
    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->o(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

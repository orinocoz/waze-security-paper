.class Lcom/waze/settings/SettingsValue$2;
.super Ljava/lang/Object;
.source "SettingsValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/settings/SettingsValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/waze/settings/SettingsValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter "in"

    .prologue
    .line 93
    new-instance v0, Lcom/waze/settings/SettingsValue;

    invoke-direct {v0, p1}, Lcom/waze/settings/SettingsValue;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/waze/settings/SettingsValue$2;->createFromParcel(Landroid/os/Parcel;)Lcom/waze/settings/SettingsValue;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter "size"

    .prologue
    .line 97
    new-array v0, p1, [Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/waze/settings/SettingsValue$2;->newArray(I)[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    return-object v0
.end method

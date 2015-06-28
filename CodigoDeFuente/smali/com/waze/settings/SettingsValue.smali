.class public Lcom/waze/settings/SettingsValue;
.super Ljava/lang/Object;
.source "SettingsValue.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/waze/settings/SettingsValue;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/waze/settings/SettingsValue;",
            ">;"
        }
    .end annotation
.end field

.field public static comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/waze/settings/SettingsValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aliases:[Ljava/lang/String;

.field public display:Ljava/lang/String;

.field public display2:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconName:Ljava/lang/String;

.field public isHeader:Z

.field public isSelected:Z

.field public rank:F

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/waze/settings/SettingsValue$1;

    invoke-direct {v0}, Lcom/waze/settings/SettingsValue$1;-><init>()V

    .line 39
    sput-object v0, Lcom/waze/settings/SettingsValue;->comparator:Ljava/util/Comparator;

    .line 91
    new-instance v0, Lcom/waze/settings/SettingsValue$2;

    invoke-direct {v0}, Lcom/waze/settings/SettingsValue$2;-><init>()V

    .line 90
    sput-object v0, Lcom/waze/settings/SettingsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/settings/SettingsValue;->rank:F

    .line 35
    iput-boolean v2, p0, Lcom/waze/settings/SettingsValue;->isHeader:Z

    .line 37
    iput-object v3, p0, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/waze/settings/SettingsValue;->rank:F

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/waze/settings/SettingsValue;->isHeader:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    .line 88
    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v1, v2

    .line 86
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "value"
    .parameter "display"
    .parameter "displaySub"
    .parameter "isSelected"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/settings/SettingsValue;->rank:F

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/settings/SettingsValue;->isHeader:Z

    .line 37
    iput-object v1, p0, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    .line 20
    iput-boolean p4, p0, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 21
    iput-object p3, p0, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "value"
    .parameter "display"
    .parameter "isSelected"

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/settings/SettingsValue;->rank:F

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/settings/SettingsValue;->isHeader:Z

    .line 37
    iput-object v1, p0, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 15
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/waze/settings/SettingsValue;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/settings/SettingsValue;

    invoke-virtual {p0, p1}, Lcom/waze/settings/SettingsValue;->compareTo(Lcom/waze/settings/SettingsValue;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/waze/settings/SettingsValue;->rank:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    iget-boolean v0, p0, Lcom/waze/settings/SettingsValue;->isHeader:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    :cond_1
    move v1, v2

    .line 76
    goto :goto_1
.end method

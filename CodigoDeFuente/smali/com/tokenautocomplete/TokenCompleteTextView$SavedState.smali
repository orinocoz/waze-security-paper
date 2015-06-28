.class Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowDuplicates:Z

.field baseObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field prefix:Ljava/lang/String;

.field tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1130
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState$1;

    invoke-direct {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState$1;-><init>()V

    .line 1129
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1138
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1099
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    .line 1100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    .line 1101
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->values()[Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 1102
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->values()[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 1103
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 1104
    return-void

    .line 1100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1108
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenCompleteTextView.SavedState{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    const-string v2, " tokens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1112
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1113
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1118
    return-void

    .line 1114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

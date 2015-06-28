.class public Lcom/waze/NativeManager$AddressStrings;
.super Ljava/lang/Object;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressStrings"
.end annotation


# instance fields
.field public address:[Ljava/lang/String;

.field public city:[Ljava/lang/String;

.field public numResults:I

.field public numToFilterTo:I

.field public street:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

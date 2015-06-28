.class public Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/mywaze/MyWazeNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileSettings"
.end annotation


# instance fields
.field public allowPings:Z

.field public nickName:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public randomUser:Z

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

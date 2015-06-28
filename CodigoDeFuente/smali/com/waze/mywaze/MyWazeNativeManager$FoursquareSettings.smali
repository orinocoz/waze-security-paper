.class public Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/mywaze/MyWazeNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoursquareSettings"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public checkInAfterLogin:Z

.field public enableTweetBadge:Z

.field public enableTweetLogin:Z

.field public loggedIn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

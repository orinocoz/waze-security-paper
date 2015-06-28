.class public Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;
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
    name = "TwitterSettings"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public loggedIn:Z

.field public postDriving:I

.field public postMunching:Z

.field public postReports:Z

.field public showMunching:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/waze/navigate/social/ShareDriveActivity$17;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$17;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$17;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->setDoneButtonClickableOrNot()V
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$26(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 564
    return-void
.end method

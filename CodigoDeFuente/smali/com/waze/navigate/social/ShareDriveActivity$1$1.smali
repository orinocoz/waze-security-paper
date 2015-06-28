.class Lcom/waze/navigate/social/ShareDriveActivity$1$1;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity$1;->event()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 135
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity$1;->access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mIsPortrait:Z
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$2(Lcom/waze/navigate/social/ShareDriveActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity$1;->access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$0(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity$1;->access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v1

    iget v1, v1, Lcom/waze/main/navigate/LocationData;->locationX:I

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDriveActivity$1;->access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget v2, v2, Lcom/waze/main/navigate/LocationData;->locationY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity$1;->access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$0(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity$1;->access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v1

    iget v1, v1, Lcom/waze/main/navigate/LocationData;->locationX:I

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity$1$1;->this$1:Lcom/waze/navigate/social/ShareDriveActivity$1;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDriveActivity$1;->access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget v2, v2, Lcom/waze/main/navigate/LocationData;->locationY:I

    add-int/lit16 v2, v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    goto :goto_0
.end method

.class Lcom/waze/navigate/social/ShareDriveActivity$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "ShareDriveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/ShareDriveActivity;
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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 123
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/ShareDriveActivity$1;)Lcom/waze/navigate/social/ShareDriveActivity;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    return-object v0
.end method


# virtual methods
.method public event()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iget v0, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$0(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->setMeeting(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$0(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget v2, v2, Lcom/waze/main/navigate/LocationData;->locationX:I

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v3}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v3

    iget v3, v3, Lcom/waze/main/navigate/LocationData;->locationY:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsView(IIIZ)V

    .line 131
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    new-instance v1, Lcom/waze/navigate/social/ShareDriveActivity$1$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/ShareDriveActivity$1$1;-><init>(Lcom/waze/navigate/social/ShareDriveActivity$1;)V

    .line 141
    const-wide/16 v2, 0x64

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/navigate/social/ShareDriveActivity;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

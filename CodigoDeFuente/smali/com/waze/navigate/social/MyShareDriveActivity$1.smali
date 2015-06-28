.class Lcom/waze/navigate/social/MyShareDriveActivity$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "MyShareDriveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/MyShareDriveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    .line 481
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->IsSetMeeting:Z
    invoke-static {v0}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$0(Lcom/waze/navigate/social/MyShareDriveActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$1(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    iget-object v1, v1, Lcom/waze/navigate/social/MyShareDriveActivity;->sMeeting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->setMeeting(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity$1;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    const/4 v1, 0x1

    #setter for: Lcom/waze/navigate/social/MyShareDriveActivity;->IsSetMeeting:Z
    invoke-static {v0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$2(Lcom/waze/navigate/social/MyShareDriveActivity;Z)V

    .line 489
    :cond_0
    return-void
.end method

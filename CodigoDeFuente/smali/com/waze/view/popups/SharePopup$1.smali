.class Lcom/waze/view/popups/SharePopup$1;
.super Ljava/lang/Object;
.source "SharePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/SharePopup;->onReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/SharePopup;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/SharePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/SharePopup$1;->this$0:Lcom/waze/view/popups/SharePopup;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/SharePopup$1;->this$0:Lcom/waze/view/popups/SharePopup;

    #getter for: Lcom/waze/view/popups/SharePopup;->mMeetingID:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/view/popups/SharePopup;->access$0(Lcom/waze/view/popups/SharePopup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->InitMeeting(Ljava/lang/String;)V

    .line 73
    return-void
.end method

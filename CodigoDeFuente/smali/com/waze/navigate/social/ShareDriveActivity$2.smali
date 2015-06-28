.class Lcom/waze/navigate/social/ShareDriveActivity$2;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 202
    invoke-static {}, Lcom/waze/navigate/social/ShareDriveActivity;->access$3()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->canAskToAdd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->SendMeeting()V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAdd:Lcom/waze/user/PersonBase;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$4(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/user/PersonBase;

    move-result-object v1

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->askToAddAFriend(Lcom/waze/user/PersonBase;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$5(Lcom/waze/navigate/social/ShareDriveActivity;Lcom/waze/user/PersonBase;)V

    goto :goto_0
.end method

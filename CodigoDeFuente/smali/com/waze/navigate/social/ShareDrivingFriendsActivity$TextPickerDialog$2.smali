.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$2;
.super Ljava/lang/Object;
.source "ShareDrivingFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$2;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$2;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;)Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    move-result-object v0

    #calls: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onSendCustomMessage()V
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$3(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    .line 426
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$2;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;

    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->dismiss()V

    .line 427
    return-void
.end method

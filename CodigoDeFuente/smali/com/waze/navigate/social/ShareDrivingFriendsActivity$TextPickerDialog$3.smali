.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;
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

.field private final synthetic val$nm:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;Lcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;

    iput-object p2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;->val$nm:Lcom/waze/NativeManager;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;)Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;->val$nm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE_REPLY_1:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onSendMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$4(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;

    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->dismiss()V

    .line 439
    return-void
.end method

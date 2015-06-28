.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$4;
.super Ljava/lang/Object;
.source "ShareDrivingFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$4;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 139
    new-instance v0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$4;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$4;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    invoke-direct {v0, v1, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Landroid/content/Context;)V

    .line 140
    .local v0, dialog:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;
    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->show()V

    .line 141
    return-void
.end method

.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$5;
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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$5;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$5;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sendMessage()V

    .line 148
    return-void
.end method

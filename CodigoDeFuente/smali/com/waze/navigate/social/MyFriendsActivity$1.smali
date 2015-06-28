.class Lcom/waze/navigate/social/MyFriendsActivity$1;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$1;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$1;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    const-class v2, Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$1;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/MyFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    return-void
.end method

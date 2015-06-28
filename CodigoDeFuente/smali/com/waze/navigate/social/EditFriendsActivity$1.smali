.class Lcom/waze/navigate/social/EditFriendsActivity$1;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/EditFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$1;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$1;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->setResult(I)V

    .line 85
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$1;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/EditFriendsActivity;->finish()V

    .line 86
    return-void
.end method

.class Lcom/waze/navigate/social/MyFriendsActivity$10;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->setupPromoBox()V
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
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$10;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 856
    const-string v2, "FRIENDS_SHARE_BANNER_CLICK"

    invoke-static {v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$10;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v1

    .line 858
    .local v1, isNavigating:Z
    if-eqz v1, :cond_0

    .line 859
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v2, v3, v3, v3}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 864
    :goto_0
    return-void

    .line 861
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$10;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    const-class v3, Lcom/waze/navigate/social/ShareHelpActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 862
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/navigate/social/MyFriendsActivity$10;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/waze/navigate/social/MyFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

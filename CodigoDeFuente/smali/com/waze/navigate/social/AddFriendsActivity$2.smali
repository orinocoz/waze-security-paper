.class Lcom/waze/navigate/social/AddFriendsActivity$2;
.super Ljava/lang/Object;
.source "AddFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity$2;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 156
    const-string v0, "ADD_FRIENDS_OPTIONS_FACEBOOK_CLICK"

    invoke-static {v0, v1, v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity$2;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/AddFriendsActivity;->facebookPrivacyClicked()V

    .line 159
    return-void
.end method

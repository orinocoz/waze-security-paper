.class Lcom/waze/share/UserDetailsActivity$9;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserDetailsActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$9;->this$0:Lcom/waze/share/UserDetailsActivity;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 388
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$9;->this$0:Lcom/waze/share/UserDetailsActivity;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    #calls: Lcom/waze/share/UserDetailsActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    invoke-static {v0, v1}, Lcom/waze/share/UserDetailsActivity;->access$1(Lcom/waze/share/UserDetailsActivity;Lcom/waze/strings/DisplayStrings;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$9;->this$0:Lcom/waze/share/UserDetailsActivity;

    #calls: Lcom/waze/share/UserDetailsActivity;->inviteFriend()V
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity;->access$6(Lcom/waze/share/UserDetailsActivity;)V

    goto :goto_0
.end method

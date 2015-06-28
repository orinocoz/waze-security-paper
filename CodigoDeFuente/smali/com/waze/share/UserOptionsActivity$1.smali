.class Lcom/waze/share/UserOptionsActivity$1;
.super Ljava/lang/Object;
.source "UserOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserOptionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserOptionsActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/UserOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/UserOptionsActivity$1;)Lcom/waze/share/UserOptionsActivity;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 58
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    #calls: Lcom/waze/share/UserOptionsActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    invoke-static {v0, v1}, Lcom/waze/share/UserOptionsActivity;->access$0(Lcom/waze/share/UserOptionsActivity;Lcom/waze/strings/DisplayStrings;)V

    .line 75
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "BEEP_BEEP_CLICK_FROM"

    .line 62
    const-string v1, "VAUE"

    const-string v2, "USER_POPUP"

    .line 61
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;

    #getter for: Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;
    invoke-static {v1}, Lcom/waze/share/UserOptionsActivity;->access$1(Lcom/waze/share/UserOptionsActivity;)Lcom/waze/user/UserData;

    move-result-object v1

    iget v1, v1, Lcom/waze/user/UserData;->mLongitude:I

    iget-object v2, p0, Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;

    #getter for: Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;
    invoke-static {v2}, Lcom/waze/share/UserOptionsActivity;->access$1(Lcom/waze/share/UserOptionsActivity;)Lcom/waze/user/UserData;

    move-result-object v2

    iget v2, v2, Lcom/waze/user/UserData;->mLatitude:I

    .line 64
    iget-object v3, p0, Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;

    #getter for: Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;
    invoke-static {v3}, Lcom/waze/share/UserOptionsActivity;->access$1(Lcom/waze/share/UserOptionsActivity;)Lcom/waze/user/UserData;

    move-result-object v3

    iget v3, v3, Lcom/waze/user/UserData;->mAzimuth:I

    iget-object v4, p0, Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;

    #getter for: Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;
    invoke-static {v4}, Lcom/waze/share/UserOptionsActivity;->access$1(Lcom/waze/share/UserOptionsActivity;)Lcom/waze/user/UserData;

    move-result-object v4

    iget v4, v4, Lcom/waze/user/UserData;->mID:I

    new-instance v5, Lcom/waze/share/UserOptionsActivity$1$1;

    invoke-direct {v5, p0}, Lcom/waze/share/UserOptionsActivity$1$1;-><init>(Lcom/waze/share/UserOptionsActivity$1;)V

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->SendBeepBeep(IIIILcom/waze/NativeManager$IResultCode;)V

    goto :goto_0
.end method

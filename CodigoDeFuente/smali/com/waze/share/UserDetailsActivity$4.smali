.class Lcom/waze/share/UserDetailsActivity$4;
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
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/UserDetailsActivity$4;)Lcom/waze/share/UserDetailsActivity;
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 267
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    #calls: Lcom/waze/share/UserDetailsActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    invoke-static {v0, v1}, Lcom/waze/share/UserDetailsActivity;->access$1(Lcom/waze/share/UserDetailsActivity;Lcom/waze/strings/DisplayStrings;)V

    .line 284
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "BEEP_BEEP_CLICK_FROM"

    .line 271
    const-string v1, "VAUE"

    const-string v2, "FRIENDS_LIST"

    .line 270
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity;->access$2(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v1}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v1

    check-cast v1, Lcom/waze/user/UserData;

    iget v1, v1, Lcom/waze/user/UserData;->mLongitude:I

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v2}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v2

    check-cast v2, Lcom/waze/user/UserData;

    iget v2, v2, Lcom/waze/user/UserData;->mLatitude:I

    .line 273
    iget-object v3, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v3}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v3

    check-cast v3, Lcom/waze/user/UserData;

    iget v3, v3, Lcom/waze/user/UserData;->mAzimuth:I

    iget-object v4, p0, Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v4}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v4

    check-cast v4, Lcom/waze/user/UserData;

    iget v4, v4, Lcom/waze/user/UserData;->mID:I

    new-instance v5, Lcom/waze/share/UserDetailsActivity$4$1;

    invoke-direct {v5, p0}, Lcom/waze/share/UserDetailsActivity$4$1;-><init>(Lcom/waze/share/UserDetailsActivity$4;)V

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->SendBeepBeep(IIIILcom/waze/NativeManager$IResultCode;)V

    goto :goto_0
.end method

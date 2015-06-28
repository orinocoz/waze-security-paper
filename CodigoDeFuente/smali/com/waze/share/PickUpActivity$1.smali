.class Lcom/waze/share/PickUpActivity$1;
.super Ljava/lang/Object;
.source "PickUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/PickUpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/PickUpActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/PickUpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/PickUpActivity$1;->this$0:Lcom/waze/share/PickUpActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 55
    const-string v0, "PICKUP_REQUEST"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/waze/share/PickUpActivity$1;->this$0:Lcom/waze/share/PickUpActivity;

    #getter for: Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/share/PickUpActivity;->access$0(Lcom/waze/share/PickUpActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->SendPickUpRequest()V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/waze/share/PickUpActivity$1;->this$0:Lcom/waze/share/PickUpActivity;

    #getter for: Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/share/PickUpActivity;->access$0(Lcom/waze/share/PickUpActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ERROR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/PickUpActivity$1;->this$0:Lcom/waze/share/PickUpActivity;

    #getter for: Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/share/PickUpActivity;->access$0(Lcom/waze/share/PickUpActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

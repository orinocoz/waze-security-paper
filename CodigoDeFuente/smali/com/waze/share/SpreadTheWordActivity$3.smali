.class Lcom/waze/share/SpreadTheWordActivity$3;
.super Ljava/lang/Object;
.source "SpreadTheWordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/SpreadTheWordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/SpreadTheWordActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/SpreadTheWordActivity$3;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 84
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity$3;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    #calls: Lcom/waze/share/SpreadTheWordActivity;->onLike()V
    invoke-static {v0}, Lcom/waze/share/SpreadTheWordActivity;->access$3(Lcom/waze/share/SpreadTheWordActivity;)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity$3;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    #getter for: Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/share/SpreadTheWordActivity;->access$1(Lcom/waze/share/SpreadTheWordActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_NO_NETWORK_CONNECTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity$3;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    #getter for: Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/share/SpreadTheWordActivity;->access$1(Lcom/waze/share/SpreadTheWordActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 90
    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

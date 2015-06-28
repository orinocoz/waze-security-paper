.class Lcom/waze/mywaze/social/FacebookEventActivity$1;
.super Ljava/lang/Object;
.source "FacebookEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/FacebookEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/FacebookEventActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/FacebookEventActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/social/FacebookEventActivity$1;)Lcom/waze/mywaze/social/FacebookEventActivity;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 78
    new-instance v4, Lcom/waze/mywaze/social/FacebookEventActivity$1$1;

    invoke-direct {v4, p0}, Lcom/waze/mywaze/social/FacebookEventActivity$1$1;-><init>(Lcom/waze/mywaze/social/FacebookEventActivity$1;)V

    .line 94
    .local v4, onClick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/mywaze/social/FacebookEventActivity;->access$1(Lcom/waze/mywaze/social/FacebookEventActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/mywaze/social/FacebookEventActivity;->access$1(Lcom/waze/mywaze/social/FacebookEventActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_EVENT_CONFIRM_NO_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 95
    const/4 v3, 0x1

    iget-object v5, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v5}, Lcom/waze/mywaze/social/FacebookEventActivity;->access$1(Lcom/waze/mywaze/social/FacebookEventActivity;)Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_EVENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v6}, Lcom/waze/mywaze/social/FacebookEventActivity;->access$1(Lcom/waze/mywaze/social/FacebookEventActivity;)Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 94
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    return-void
.end method

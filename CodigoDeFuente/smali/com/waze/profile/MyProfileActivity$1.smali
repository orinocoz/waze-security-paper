.class Lcom/waze/profile/MyProfileActivity$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MyProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/MyProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$1;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$1;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$0(Lcom/waze/profile/MyProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$1;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$1(Lcom/waze/profile/MyProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ENTER_USERNAME_FIRST:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$1;->this$0:Lcom/waze/profile/MyProfileActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/profile/MyProfileActivity;->setResult(I)V

    .line 137
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$1;->this$0:Lcom/waze/profile/MyProfileActivity;

    invoke-virtual {v0}, Lcom/waze/profile/MyProfileActivity;->finish()V

    goto :goto_0
.end method

.class Lcom/waze/profile/MyProfileActivity$12;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$12;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$12;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mIgnoreTextEdits:Z
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$4(Lcom/waze/profile/MyProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$12;->this$0:Lcom/waze/profile/MyProfileActivity;

    const/4 v1, 0x1

    #setter for: Lcom/waze/profile/MyProfileActivity;->mWasEmailChanged:Z
    invoke-static {v0, v1}, Lcom/waze/profile/MyProfileActivity;->access$16(Lcom/waze/profile/MyProfileActivity;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 350
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 353
    return-void
.end method

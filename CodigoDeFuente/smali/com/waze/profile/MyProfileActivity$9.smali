.class Lcom/waze/profile/MyProfileActivity$9;
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
.field private aEvent:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/waze/profile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/MyProfileActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/profile/MyProfileActivity$9;->aEvent:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/MyProfileActivity$9;)Lcom/waze/profile/MyProfileActivity;
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mIgnoreTextEdits:Z
    invoke-static {v1}, Lcom/waze/profile/MyProfileActivity;->access$4(Lcom/waze/profile/MyProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    const/4 v2, 0x1

    #setter for: Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z
    invoke-static {v1, v2}, Lcom/waze/profile/MyProfileActivity;->access$8(Lcom/waze/profile/MyProfileActivity;Z)V

    .line 271
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    const v2, 0x7f09041e

    invoke-virtual {v1, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    .local v0, errCode:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/profile/MyProfileActivity;->access$9(Lcom/waze/profile/MyProfileActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CHECKING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 274
    const v2, 0x7f080031

    .line 273
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    const v2, 0x7f09041f

    invoke-virtual {v1, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    #setter for: Lcom/waze/profile/MyProfileActivity;->mIsUserNameValid:Z
    invoke-static {v1, v3}, Lcom/waze/profile/MyProfileActivity;->access$10(Lcom/waze/profile/MyProfileActivity;Z)V

    .line 280
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->aEvent:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->aEvent:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/waze/AppService;->Remove(Ljava/lang/Runnable;)V

    .line 293
    :goto_1
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->aEvent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 283
    :cond_1
    new-instance v1, Lcom/waze/profile/MyProfileActivity$9$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/MyProfileActivity$9$1;-><init>(Lcom/waze/profile/MyProfileActivity$9;)V

    iput-object v1, p0, Lcom/waze/profile/MyProfileActivity$9;->aEvent:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 297
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "arg0"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/profile/MyProfileActivity;->access$12(Lcom/waze/profile/MyProfileActivity;Ljava/lang/String;)V

    .line 302
    return-void
.end method

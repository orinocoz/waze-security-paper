.class Lcom/waze/navigate/AddFavoriteActivity$4;
.super Ljava/lang/Object;
.source "AddFavoriteActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddFavoriteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteActivity$4;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 199
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 202
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "arg0"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity$4;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    iget-object v0, v0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity$4;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    iget-object v0, v0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_0
.end method

.class Lcom/waze/share/ShareActivity$10;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareActivity$10;->this$0:Lcom/waze/share/ShareActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 236
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 239
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

    .line 243
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/waze/share/ShareActivity$10;->this$0:Lcom/waze/share/ShareActivity;

    #getter for: Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/share/ShareActivity;->access$2(Lcom/waze/share/ShareActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, 0x4160

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/waze/share/ShareActivity$10;->this$0:Lcom/waze/share/ShareActivity;

    #getter for: Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/share/ShareActivity;->access$2(Lcom/waze/share/ShareActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, 0x4180

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_0
.end method

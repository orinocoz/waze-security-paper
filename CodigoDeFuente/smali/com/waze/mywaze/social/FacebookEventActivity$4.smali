.class Lcom/waze/mywaze/social/FacebookEventActivity$4;
.super Ljava/lang/Object;
.source "FacebookEventActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/waze/mywaze/social/FacebookEventActivity$4;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 132
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

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity$4;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    iget-object v0, v0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity$4;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    iget-object v0, v0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_0
.end method

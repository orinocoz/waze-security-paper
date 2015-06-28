.class Lcom/waze/navigate/NavigateActivity$5;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/NavigateActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/NavigateActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$5;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 396
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 399
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

    .line 403
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$5;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v2, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(IF)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$5;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v2, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(IF)V

    goto :goto_0
.end method

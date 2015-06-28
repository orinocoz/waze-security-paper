.class Lcom/waze/navigate/AutocompleteSearchActivity$4;
.super Ljava/lang/Object;
.source "AutocompleteSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AutocompleteSearchActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AutocompleteSearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AutocompleteSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AutocompleteSearchActivity$4;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AutocompleteSearchActivity$4;)Lcom/waze/navigate/AutocompleteSearchActivity;
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$4;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$4;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    iget-object v0, v0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    new-instance v1, Lcom/waze/navigate/AutocompleteSearchActivity$4$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AutocompleteSearchActivity$4$1;-><init>(Lcom/waze/navigate/AutocompleteSearchActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/text/InstantAutoComplete;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 235
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

    .line 239
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$4;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    iget-object v0, v0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v2, v1}, Lcom/waze/view/text/InstantAutoComplete;->setTextSize(IF)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$4;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    iget-object v0, v0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v2, v1}, Lcom/waze/view/text/InstantAutoComplete;->setTextSize(IF)V

    goto :goto_0
.end method

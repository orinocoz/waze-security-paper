.class Lcom/waze/navigate/AutocompleteSearchActivity$4$1;
.super Ljava/lang/Object;
.source "AutocompleteSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AutocompleteSearchActivity$4;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AutocompleteSearchActivity$4;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AutocompleteSearchActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AutocompleteSearchActivity$4$1;->this$1:Lcom/waze/navigate/AutocompleteSearchActivity$4;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$4$1;->this$1:Lcom/waze/navigate/AutocompleteSearchActivity$4;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity$4;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;
    invoke-static {v0}, Lcom/waze/navigate/AutocompleteSearchActivity$4;->access$0(Lcom/waze/navigate/AutocompleteSearchActivity$4;)Lcom/waze/navigate/AutocompleteSearchActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v0}, Lcom/waze/view/text/InstantAutoComplete;->showDropDown()V

    .line 230
    return-void
.end method

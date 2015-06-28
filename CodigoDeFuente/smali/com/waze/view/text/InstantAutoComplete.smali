.class public Lcom/waze/view/text/InstantAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "InstantAutoComplete.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public filterNow()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/waze/view/text/InstantAutoComplete;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/waze/view/text/InstantAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/view/text/InstantAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/waze/view/text/InstantAutoComplete;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/waze/view/text/InstantAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/view/text/InstantAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 33
    :cond_0
    return-void
.end method

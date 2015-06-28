.class public Lcom/waze/autocomplete/ContactsCompletionView;
.super Lcom/tokenautocomplete/TokenCompleteTextView;
.source "ContactsCompletionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;,
        Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;
    }
.end annotation


# instance fields
.field getViewForObject:Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;

.field maxHeightLimit:I

.field onBackPressed:Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->allowDuplicates(Z)V

    .line 25
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->setTokenClickStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->allowDuplicates(Z)V

    .line 32
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->setTokenClickStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->allowDuplicates(Z)V

    .line 38
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->setTokenClickStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "object"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected defaultObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "completionText"

    .prologue
    const/4 v5, 0x0

    .line 59
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 60
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v1, Lcom/waze/autocomplete/Person;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@example.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v5}, Lcom/waze/autocomplete/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/waze/autocomplete/Person;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v5}, Lcom/waze/autocomplete/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "object"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->getViewForObject:Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->getViewForObject:Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;

    invoke-interface {v0, p1}, Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;->getViewForObject(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "previous"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/tokenautocomplete/TokenCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 80
    iget v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    if-lez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->setMaxHeight(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->onBackPressed:Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->onBackPressed:Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;

    invoke-interface {v0}, Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;->onBackPressed()V

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setIGetViewForObject(Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;)V
    .locals 0
    .parameter "gvfo"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/waze/autocomplete/ContactsCompletionView;->getViewForObject:Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;

    .line 43
    return-void
.end method

.method public setIOnBackPressed(Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;)V
    .locals 0
    .parameter "obp"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/waze/autocomplete/ContactsCompletionView;->onBackPressed:Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;

    .line 47
    return-void
.end method

.method public setMaxHeightLimit(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 70
    iput p1, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    .line 71
    iget v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->setMaxHeight(I)V

    .line 72
    invoke-virtual {p0}, Lcom/waze/autocomplete/ContactsCompletionView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    if-le v0, v1, :cond_0

    .line 73
    iget v0, p0, Lcom/waze/autocomplete/ContactsCompletionView;->maxHeightLimit:I

    invoke-virtual {p0, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->setHeight(I)V

    .line 75
    :cond_0
    return-void
.end method

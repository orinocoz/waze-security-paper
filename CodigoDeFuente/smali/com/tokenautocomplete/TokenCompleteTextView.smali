.class public abstract Lcom/tokenautocomplete/TokenCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;,
        Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;,
        Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;,
        Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle:[I

.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allowCollapse:Z

.field private allowDuplicates:Z

.field private deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field private hintVisible:Z

.field inInvalidate:Z

.field private initialized:Z

.field private lastLayout:Landroid/text/Layout;

.field private listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

.field private objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private savingState:Z

.field private selectedObject:Ljava/lang/Object;

.field private shouldFocusNext:Z

.field private spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

.field private tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field private tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method static synthetic $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle()[I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView;->$SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->values()[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView;->$SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tokenautocomplete/TokenCompleteTextView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 83
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 84
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 88
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 89
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 90
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 91
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 92
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 261
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 145
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 84
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 88
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 89
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 90
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 91
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 92
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 261
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 150
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 84
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 88
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 89
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 90
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 91
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 92
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 261
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 155
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    .line 156
    return-void
.end method

.method static synthetic access$0(Lcom/tokenautocomplete/TokenCompleteTextView;)F
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tokenautocomplete/TokenCompleteTextView;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    return v0
.end method

.method static synthetic access$13(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    return v0
.end method

.method static synthetic access$15(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    return-void
.end method

.method static synthetic access$3(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    return-void
.end method

.method static synthetic access$4(Lcom/tokenautocomplete/TokenCompleteTextView;)Landroid/text/Layout;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    return v0
.end method

.method static synthetic access$6(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    return-void
.end method

.method static synthetic access$9(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method private api16Invalidate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 267
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowColor()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setShadowLayer(FFFI)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 270
    :cond_0
    return-void
.end method

.method private buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 3
    .parameter "text"

    .prologue
    .line 573
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private clearSelections()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 757
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 760
    .local v0, text:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v0, v4, v3, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 763
    .local v2, tokens:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    array-length v5, v2

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 766
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    goto :goto_0

    .line 763
    :cond_2
    aget-object v1, v2, v3

    .line 764
    .local v1, token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    iget-object v6, v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setSelected(Z)V

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private deleteSelectedObject(Z)Z
    .locals 7
    .parameter "handled"

    .prologue
    const/4 v4, 0x0

    .line 377
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 379
    .local v3, text:Landroid/text/Editable;
    if-nez v3, :cond_0

    move v0, p1

    .line 390
    .end local v3           #text:Landroid/text/Editable;
    .end local p1
    .local v0, handled:Z
    :goto_0
    return v0

    .line 381
    .end local v0           #handled:Z
    .restart local v3       #text:Landroid/text/Editable;
    .restart local p1
    :cond_0
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 382
    .local v2, spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    array-length v5, v2

    :goto_1
    if-lt v4, v5, :cond_2

    .end local v2           #spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .end local v3           #text:Landroid/text/Editable;
    :cond_1
    :goto_2
    move v0, p1

    .line 390
    .end local p1
    .restart local v0       #handled:Z
    goto :goto_0

    .line 382
    .end local v0           #handled:Z
    .restart local v2       #spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .restart local v3       #text:Landroid/text/Editable;
    .restart local p1
    :cond_2
    aget-object v1, v2, v4

    .line 383
    .local v1, span:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    iget-object v6, v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 384
    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    .line 385
    const/4 p1, 0x1

    .line 386
    goto :goto_2

    .line 382
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private handleDone()V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, next:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v1, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v1}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 107
    .local v0, text:Landroid/text/Editable;
    sget-boolean v1, Lcom/tokenautocomplete/TokenCompleteTextView;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 108
    :cond_0
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;)V

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 110
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->resetListeners()V

    .line 112
    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTextIsSelectable(Z)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setLongClickable(Z)V

    .line 116
    const/high16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setInputType(I)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$1;

    invoke-direct {v2, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$1;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 139
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;)V

    .line 140
    iput-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 141
    return-void
.end method

.method private maxTextWidth()F
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 5
    .parameter "span"

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 690
    .local v1, text:Landroid/text/Editable;
    if-nez v1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 693
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 694
    .local v0, spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    array-length v2, v0

    if-nez v2, :cond_1

    .line 695
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 699
    :cond_1
    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method private resetListeners()V
    .locals 5

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 97
    .local v0, text:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 99
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;)V

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    :cond_0
    return-void
.end method

.method private updateHint()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    .line 704
    .local v12, text:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v7

    .line 705
    .local v7, hintText:Ljava/lang/CharSequence;
    if-eqz v12, :cond_0

    if-nez v7, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 711
    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;

    invoke-interface {v12, v5, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;

    .line 712
    .local v8, hints:[Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;
    const/4 v6, 0x0

    .line 713
    .local v6, hint:Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    .line 714
    .local v11, testLength:I
    array-length v1, v8

    if-lez v1, :cond_2

    .line 715
    aget-object v6, v8, v5

    .line 716
    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v11, v1

    .line 719
    :cond_2
    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v1, v11, :cond_4

    .line 720
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 722
    if-nez v6, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    .line 728
    .local v13, tf:Landroid/graphics/Typeface;
    const/4 v2, 0x0

    .line 729
    .local v2, style:I
    if-eqz v13, :cond_3

    .line 730
    invoke-virtual {v13}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .line 732
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 734
    .local v4, colors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 735
    .local v0, hintSpan:Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v12, v1, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 736
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0x21

    invoke-interface {v12, v0, v1, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 737
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 740
    .end local v0           #hintSpan:Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;
    .end local v2           #style:I
    .end local v4           #colors:Landroid/content/res/ColorStateList;
    .end local v13           #tf:Landroid/graphics/Typeface;
    :cond_4
    if-eqz v6, :cond_0

    .line 745
    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 746
    .local v10, sStart:I
    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 748
    .local v9, sEnd:I
    invoke-interface {v12, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 749
    const-string v1, ""

    invoke-interface {v12, v10, v9, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 751
    iput-boolean v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 659
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 660
    return-void
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "object"
    .parameter "sourceText"

    .prologue
    .line 619
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$2;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 651
    return-void
.end method

.method public allowCollapse(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 226
    return-void
.end method

.method public allowDuplicates(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 215
    return-void
.end method

.method protected buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .locals 2
    .parameter "obj"

    .prologue
    .line 577
    if-nez p1, :cond_0

    .line 578
    const/4 v1, 0x0

    .line 581
    :goto_0
    return-object v1

    .line 580
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getViewForObject(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, tokenView:Landroid/view/View;
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-direct {v1, p0, v0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "object"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 556
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView;->$SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 565
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 558
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 560
    :pswitch_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected convertSerializableArrayToObjectArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/Serializable;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    .local p1, s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/Serializable;>;"
    return-object p1
.end method

.method protected currentCompletionText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    iget-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 254
    :goto_0
    return-object v3

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 249
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 250
    .local v1, end:I
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 251
    .local v2, start:I
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 254
    :cond_1
    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected abstract defaultObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public enoughToFilter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 286
    .local v2, text:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 287
    .local v0, end:I
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v4, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v3

    .line 291
    :cond_1
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 292
    .local v1, start:I
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 293
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 296
    :cond_2
    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getThreshold()I

    move-result v5

    if-lt v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSerializableObjects()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1008
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v1, serializables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/Serializable;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1016
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1017
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "You should make your objects Serializable or override"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1018
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "getSerializableObjects and convertSerializableArrayToObjectArray"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    :cond_0
    return-object v1

    .line 1009
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1010
    .local v0, obj:Ljava/lang/Object;
    instance-of v3, v0, Ljava/io/Serializable;

    if-eqz v3, :cond_2

    .line 1011
    check-cast v0, Ljava/io/Serializable;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1013
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to save \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getViewForObject(Ljava/lang/Object;)Landroid/view/View;
.end method

.method protected handleFocus(Z)V
    .locals 14
    .parameter "hasFocus"

    .prologue
    .line 482
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz v1, :cond_3

    .line 483
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSingleLine(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 486
    .local v10, text:Landroid/text/Editable;
    if-eqz v10, :cond_1

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v8

    .line 489
    .local v8, lastPosition:I
    const/4 v1, 0x0

    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v10, v1, v8, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 490
    .local v12, tokens:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v3, v12

    sub-int v2, v1, v3

    .line 491
    .local v2, count:I
    if-lez v2, :cond_1

    .line 492
    add-int/lit8 v8, v8, 0x1

    .line 493
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentTextColor()I

    move-result v4

    .line 494
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextSize()F

    move-result v1

    float-to-int v5, v1

    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v1

    float-to-int v6, v1

    move-object v1, p0

    .line 493
    invoke-direct/range {v0 .. v6}, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;ILandroid/content/Context;III)V

    .line 495
    .local v0, cs:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    invoke-interface {v10, v8, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 497
    const/4 v1, 0x0

    .line 498
    iget-object v3, v0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 497
    invoke-static {v10, v1, v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    .line 500
    .local v9, newWidth:F
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v1

    cmpl-float v1, v9, v1

    if-lez v1, :cond_0

    .line 501
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v8

    invoke-interface {v10, v8, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 503
    array-length v1, v12

    if-lez v1, :cond_2

    .line 504
    array-length v1, v12

    add-int/lit8 v1, v1, -0x1

    aget-object v11, v12, v1

    .line 505
    .local v11, token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    invoke-interface {v10, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 506
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->setCount(I)V

    .line 511
    .end local v11           #token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :goto_0
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    invoke-interface {v10, v8, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 514
    :cond_0
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v8

    const/16 v3, 0x21

    invoke-interface {v10, v0, v8, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 542
    .end local v0           #cs:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    .end local v2           #count:I
    .end local v8           #lastPosition:I
    .end local v9           #newWidth:F
    .end local v12           #tokens:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :cond_1
    :goto_1
    return-void

    .line 508
    .restart local v0       #cs:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    .restart local v2       #count:I
    .restart local v8       #lastPosition:I
    .restart local v9       #newWidth:F
    .restart local v12       #tokens:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :cond_2
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_0

    .line 520
    .end local v0           #cs:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    .end local v2           #count:I
    .end local v8           #lastPosition:I
    .end local v9           #newWidth:F
    .end local v10           #text:Landroid/text/Editable;
    .end local v12           #tokens:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSingleLine(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 522
    .restart local v10       #text:Landroid/text/Editable;
    if-eqz v10, :cond_1

    .line 523
    const/4 v1, 0x0

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-interface {v10, v1, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    .line 524
    .local v7, counts:[Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    array-length v3, v7

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_4

    .line 529
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v1, :cond_5

    .line 530
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    .line 535
    :goto_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 536
    .local v13, watchers:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    array-length v1, v13

    if-nez v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v3, 0x0

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v10, v1, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 524
    .end local v13           #watchers:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    :cond_4
    aget-object v2, v7, v1

    .line 525
    .local v2, count:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    invoke-interface {v10, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v10, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v10, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 526
    invoke-interface {v10, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 532
    .end local v2           #count:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    :cond_5
    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_3
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->api16Invalidate()V

    .line 279
    :cond_0
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->invalidate()V

    .line 280
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 317
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V

    .line 318
    .local v0, connection:Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v2, 0xff

    .line 319
    .local v1, imeActions:I
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 321
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v2, v1

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 323
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 325
    :cond_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 326
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 328
    :cond_1
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "action"
    .parameter "keyEvent"

    .prologue
    .line 395
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    .line 397
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "previous"

    .prologue
    .line 546
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 548
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleFocus(Z)V

    .line 549
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 373
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .line 363
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 365
    const/4 v0, 0x1

    .line 367
    goto :goto_0

    .line 369
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 373
    goto :goto_1

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 348
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 349
    .local v0, handled:Z
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 351
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    .line 353
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 477
    invoke-super/range {p0 .. p5}, Landroid/widget/MultiAutoCompleteTextView;->onLayout(ZIIII)V

    .line 478
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 479
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1051
    instance-of v2, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    if-nez v2, :cond_1

    .line 1052
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1084
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 1056
    check-cast v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 1057
    .local v1, ss:Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1059
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    iput-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 1061
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    .line 1062
    iget-boolean v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 1063
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 1064
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 1066
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->resetListeners()V

    .line 1067
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSerializableArrayToObjectArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1073
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$4;

    invoke-direct {v2, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$4;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1067
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1068
    .local v0, obj:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSerializableObjects()Ljava/util/ArrayList;

    move-result-object v0

    .line 1035
    .local v0, baseObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/Serializable;>;"
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 1036
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1037
    .local v2, superState:Landroid/os/Parcelable;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 1038
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    invoke-direct {v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1040
    .local v1, state:Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    iput-object v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    .line 1041
    iget-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    iput-boolean v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    .line 1042
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 1043
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 1044
    iput-object v0, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 1046
    return-object v1
.end method

.method protected onSelectionChanged(II)V
    .locals 7
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 435
    iget-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v4, :cond_0

    .line 437
    const/4 p1, 0x0

    .line 440
    :cond_0
    move p2, p1

    .line 442
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 444
    .local v3, text:Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    .line 450
    .end local v3           #text:Landroid/text/Editable;
    :cond_1
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt p1, v4, :cond_2

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_3

    .line 452
    :cond_2
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    .line 473
    :goto_0
    return-void

    .line 454
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 455
    .restart local v3       #text:Landroid/text/Editable;
    if-eqz v3, :cond_4

    .line 457
    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v3, p1, p2, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 458
    .local v2, spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_5

    .line 471
    .end local v2           #spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    goto :goto_0

    .line 458
    .restart local v2       #spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :cond_5
    aget-object v0, v2, v4

    .line 459
    .local v0, span:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 460
    .local v1, spanEnd:I
    if-gt p1, v1, :cond_7

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, p1, :cond_7

    .line 461
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 462
    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 464
    :cond_6
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 458
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 405
    .local v0, action:I
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 406
    .local v4, text:Landroid/text/Editable;
    const/4 v1, 0x0

    .line 408
    .local v1, handled:Z
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    sget-object v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-ne v5, v6, :cond_0

    .line 409
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 416
    .local v3, offset:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 417
    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v4, v3, v3, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 419
    .local v2, links:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    array-length v5, v2

    if-lez v5, :cond_1

    .line 420
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->onClick()V

    .line 421
    const/4 v1, 0x1

    .line 426
    .end local v2           #links:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .end local v3           #offset:I
    :cond_1
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    sget-object v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eq v5, v6, :cond_2

    .line 427
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 429
    :cond_2
    return v1
.end method

.method public performCompletion()V
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getListSelection()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, bestGuess:Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 312
    .end local v0           #bestGuess:Ljava/lang/Object;
    :goto_1
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->defaultObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0       #bestGuess:Ljava/lang/Object;
    goto :goto_0

    .line 310
    .end local v0           #bestGuess:Ljava/lang/Object;
    :cond_1
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performCompletion()V

    goto :goto_1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "keyCode"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 165
    .local v0, filter:Landroid/widget/Filter;
    if-eqz v0, :cond_1

    .line 166
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 168
    :cond_1
    return-void
.end method

.method public removeObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 670
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$3;

    invoke-direct {v0, p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$3;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 686
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearComposingText()V

    .line 587
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 588
    .local v3, ssb:Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    move-result-object v5

    .line 590
    .local v5, tokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 591
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 592
    .local v1, end:I
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 593
    .local v4, start:I
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 594
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 596
    :cond_0
    invoke-static {v0, v4, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, original:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 599
    if-nez v5, :cond_2

    .line 600
    const-string v6, " "

    invoke-interface {v0, v4, v1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 609
    :cond_1
    :goto_0
    return-void

    .line 601
    :cond_2
    iget-boolean v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 602
    const-string v6, " "

    invoke-interface {v0, v4, v1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 604
    :cond_3
    invoke-static {v0, v4, v1, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 605
    invoke-interface {v0, v4, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 606
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x21

    invoke-interface {v0, v5, v4, v6, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;)V
    .locals 0
    .parameter "dStyle"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 179
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 192
    const-string v1, ""

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 194
    .local v0, text:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    .line 200
    return-void
.end method

.method public setTokenClickStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;)V
    .locals 0
    .parameter "cStyle"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 184
    return-void
.end method

.method public setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    .line 188
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 174
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 175
    return-void
.end method

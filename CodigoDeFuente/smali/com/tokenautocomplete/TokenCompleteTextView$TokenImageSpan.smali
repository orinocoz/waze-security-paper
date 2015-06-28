.class public Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
.super Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TokenImageSpan"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle:[I


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field private token:Ljava/lang/Object;


# direct methods
.method static synthetic $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle()[I
    .locals 3

    .prologue
    .line 846
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->$SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->values()[Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Delete:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->$SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle:[I

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

.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "d"
    .parameter "token"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 850
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;)V

    .line 851
    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Ljava/lang/Object;

    .line 852
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 859
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 860
    .local v0, text:Landroid/text/Editable;
    if-nez v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->$SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle()[I

    move-result-object v1

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 884
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionStart()I

    move-result v1

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_0

    .line 886
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 866
    :pswitch_0
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 867
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$2(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 868
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 872
    :cond_2
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    move-result-object v1

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-ne v1, v2, :cond_3

    .line 873
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 874
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    goto :goto_0

    .line 880
    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    invoke-static {v1, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$3(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    goto :goto_0

    .line 862
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
.super Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountSpan"
.end annotation


# instance fields
.field private count:I

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;ILandroid/content/Context;III)V
    .locals 3
    .parameter
    .parameter "count"
    .parameter "ctx"
    .parameter "textColor"
    .parameter "textSize"
    .parameter "maxWidth"

    .prologue
    const/4 v2, -0x2

    .line 826
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 827
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;)V

    .line 823
    const-string v1, ""

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    .line 828
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 829
    .local v0, v:Landroid/widget/TextView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 831
    const/4 v1, 0x0

    int-to-float v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 833
    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 834
    invoke-virtual {p0, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->setCount(I)V

    .line 835
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->count:I

    return v0
.end method

.method public setCount(I)V
    .locals 2
    .parameter "c"

    .prologue
    .line 838
    iput p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->count:I

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    return-void
.end method

.class Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$6;
.super Ljava/lang/Object;
.source "PlacesAutoCompleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$6;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$6;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mTextBox:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$10(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$6;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mTextBox:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$10(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 444
    :cond_0
    return-void
.end method

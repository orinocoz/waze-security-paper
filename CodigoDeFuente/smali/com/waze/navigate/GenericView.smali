.class public Lcom/waze/navigate/GenericView;
.super Ljava/lang/Object;
.source "GenericView.java"


# instance fields
.field private imageId:Ljava/lang/Integer;

.field private landscapeImageId:Ljava/lang/Integer;

.field private textId:I

.field private visibility:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;ILjava/lang/Integer;)V
    .locals 0
    .parameter "imageId"
    .parameter "textId"
    .parameter "visibility"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/waze/navigate/GenericView;->imageId:Ljava/lang/Integer;

    .line 20
    iput p2, p0, Lcom/waze/navigate/GenericView;->textId:I

    .line 21
    iput-object p3, p0, Lcom/waze/navigate/GenericView;->visibility:Ljava/lang/Integer;

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "imageId"
    .parameter "textId"
    .parameter "visibility"
    .parameter "landscapeImageId"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/GenericView;-><init>(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 25
    iput-object p4, p0, Lcom/waze/navigate/GenericView;->landscapeImageId:Ljava/lang/Integer;

    .line 26
    return-void
.end method


# virtual methods
.method fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;)V
    .locals 3
    .parameter "b"
    .parameter "nativeManager"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/waze/navigate/GenericView;->visibility:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/waze/navigate/GenericView;->visibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    :cond_0
    iget v0, p0, Lcom/waze/navigate/GenericView;->textId:I

    if-lez v0, :cond_1

    .line 59
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/waze/navigate/GenericView;->textId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/GenericView;->imageId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 62
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/GenericView;->imageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_2
    return-void
.end method

.method public fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;I)V
    .locals 3
    .parameter "b"
    .parameter "nativeManager"
    .parameter "orientation"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/GenericView;->fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;)V

    .line 68
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/GenericView;->landscapeImageId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 69
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/GenericView;->landscapeImageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    return-void
.end method

.method getImageId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/navigate/GenericView;->imageId:Ljava/lang/Integer;

    return-object v0
.end method

.method getText()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/waze/navigate/GenericView;->textId:I

    return v0
.end method

.method getVisibility()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/waze/navigate/GenericView;->visibility:Ljava/lang/Integer;

    return-object v0
.end method

.method onClick(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 51
    return-void
.end method

.method public setImageId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "imageId"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/waze/navigate/GenericView;->imageId:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public setLandscapeImageId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "landscapeImageId"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/waze/navigate/GenericView;->landscapeImageId:Ljava/lang/Integer;

    .line 36
    return-void
.end method

.class public Lcom/waze/navigate/social/AddFriendsUtils;
.super Ljava/lang/Object;
.source "AddFriendsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "ctx"
    .parameter "root"

    .prologue
    .line 18
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 19
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "ab"
    .parameter "v"
    .parameter "name"
    .parameter "imageUrl"

    .prologue
    const/4 v4, 0x0

    .line 23
    const v0, 0x7f090082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 24
    .local v3, iv:Landroid/widget/ImageView;
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 25
    .local v6, tv:Landroid/widget/TextView;
    const v0, 0x7f090081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 26
    .local v7, tvi:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :cond_0
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const v0, 0x7f02011b

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    :goto_0
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    const/4 v2, 0x1

    move-object v1, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 36
    return-void

    .line 30
    :cond_1
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    invoke-static {p2}, Lcom/waze/share/ShareUtility;->getInitials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

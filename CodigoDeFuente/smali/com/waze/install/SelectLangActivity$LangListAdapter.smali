.class Lcom/waze/install/SelectLangActivity$LangListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectLangActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/install/SelectLangActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LangListAdapter"
.end annotation


# instance fields
.field private langs:[Lcom/waze/install/Lang;

.field final synthetic this$0:Lcom/waze/install/SelectLangActivity;


# direct methods
.method public constructor <init>(Lcom/waze/install/SelectLangActivity;[Lcom/waze/install/Lang;)V
    .locals 0
    .parameter
    .parameter "langs"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/waze/install/SelectLangActivity$LangListAdapter;->this$0:Lcom/waze/install/SelectLangActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/waze/install/SelectLangActivity$LangListAdapter;->langs:[Lcom/waze/install/Lang;

    .line 70
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/waze/install/SelectLangActivity$LangListAdapter;->langs:[Lcom/waze/install/Lang;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/install/SelectLangActivity$LangListAdapter;->langs:[Lcom/waze/install/Lang;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/waze/install/SelectLangActivity$LangListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/install/Lang;

    .line 84
    .local v1, lang:Lcom/waze/install/Lang;
    if-nez p2, :cond_0

    .line 85
    iget-object v4, p0, Lcom/waze/install/SelectLangActivity$LangListAdapter;->this$0:Lcom/waze/install/SelectLangActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Lcom/waze/install/SelectLangActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 86
    .local v3, li:Landroid/view/LayoutInflater;
    const v4, 0x7f030071

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    .end local v3           #li:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f09002d

    invoke-virtual {p2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 90
    if-eqz v1, :cond_1

    .line 91
    const v4, 0x7f09036d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/waze/install/Lang;->getLable()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v4, 0x7f09036c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, langView:Landroid/view/View;
    if-nez p1, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/waze/install/SelectLangActivity$LangListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    :goto_1
    or-int v0, v4, v6

    .line 95
    .local v0, first_last:I
    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_2
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    .end local v0           #first_last:I
    .end local v2           #langView:Landroid/view/View;
    :cond_1
    return-object p2

    .restart local v2       #langView:Landroid/view/View;
    :cond_2
    move v4, v5

    .line 94
    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1

    .line 97
    .restart local v0       #first_last:I
    :pswitch_0
    const v4, 0x7f020224

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 100
    :pswitch_1
    const v4, 0x7f020226

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 103
    :pswitch_2
    const v4, 0x7f020223

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 106
    :pswitch_3
    const v4, 0x7f020225

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

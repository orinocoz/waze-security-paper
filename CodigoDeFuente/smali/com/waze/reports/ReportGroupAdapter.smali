.class public Lcom/waze/reports/ReportGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReportGroupAdapter.java"


# instance fields
.field private groups:[Lcom/waze/mywaze/Group;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/ReportGroupAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/reports/ReportGroupAdapter;->groups:[Lcom/waze/mywaze/Group;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/reports/ReportGroupAdapter;->groups:[Lcom/waze/mywaze/Group;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v5, p0, Lcom/waze/reports/ReportGroupAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0300ed

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    :cond_0
    iget-object v5, p0, Lcom/waze/reports/ReportGroupAdapter;->groups:[Lcom/waze/mywaze/Group;

    aget-object v3, v5, p1

    .line 50
    .local v3, item:Lcom/waze/mywaze/Group;
    const v5, 0x7f0903f3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    .line 51
    .local v4, name:Landroid/widget/CheckedTextView;
    const v5, 0x7f09063e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 52
    .local v2, iconView:Landroid/widget/ImageView;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/waze/mywaze/Group;->icon:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :goto_0
    iget-object v5, v3, Lcom/waze/mywaze/Group;->name:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NO_GROUP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_1
    iget-boolean v5, v3, Lcom/waze/mywaze/Group;->isSelected:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 65
    const v5, 0x7f0902c8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, container:Landroid/view/View;
    if-nez p1, :cond_4

    .line 67
    iget-object v5, p0, Lcom/waze/reports/ReportGroupAdapter;->groups:[Lcom/waze/mywaze/Group;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_3

    .line 68
    const v5, 0x7f020225

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    :goto_2
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    return-object p2

    .line 57
    .end local v0           #container:Landroid/view/View;
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v5, v3, Lcom/waze/mywaze/Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    .restart local v0       #container:Landroid/view/View;
    :cond_3
    const v5, 0x7f020226

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 73
    :cond_4
    iget-object v5, p0, Lcom/waze/reports/ReportGroupAdapter;->groups:[Lcom/waze/mywaze/Group;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_5

    .line 74
    const v5, 0x7f020223

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 76
    :cond_5
    const v5, 0x7f020224

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public setGroups([Lcom/waze/mywaze/Group;)V
    .locals 0
    .parameter "groups"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/waze/reports/ReportGroupAdapter;->groups:[Lcom/waze/mywaze/Group;

    .line 84
    return-void
.end method

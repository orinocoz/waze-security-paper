.class public Lcom/waze/settings/SettingValueAdapterTwoLines;
.super Landroid/widget/BaseAdapter;
.source "SettingValueAdapterTwoLines.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private values:[Lcom/waze/voice/VoiceData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->inflater:Landroid/view/LayoutInflater;

    .line 20
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getValues()[Lcom/waze/voice/VoiceData;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300ee

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    :cond_0
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    aget-object v2, v4, p1

    .line 52
    .local v2, item:Lcom/waze/voice/VoiceData;
    const v4, 0x7f0903f3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 54
    .local v3, name:Landroid/widget/CheckedTextView;
    const v4, 0x7f09063f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, SecondLine:Landroid/widget/TextView;
    iget-object v4, v2, Lcom/waze/voice/VoiceData;->SecondLine:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/waze/voice/VoiceData;->SecondLine:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    iget-object v4, v2, Lcom/waze/voice/VoiceData;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-boolean v4, v2, Lcom/waze/voice/VoiceData;->bIsSelected:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 68
    const v4, 0x7f0902c8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, container:Landroid/view/View;
    if-nez p1, :cond_4

    .line 70
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    .line 71
    const v4, 0x7f020225

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    :goto_1
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    return-object p2

    .line 62
    .end local v1           #container:Landroid/view/View;
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v4, v2, Lcom/waze/voice/VoiceData;->SecondLine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    .restart local v1       #container:Landroid/view/View;
    :cond_3
    const v4, 0x7f020226

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_5

    .line 77
    const v4, 0x7f020223

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 79
    :cond_5
    const v4, 0x7f020224

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setValues([Lcom/waze/voice/VoiceData;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/waze/settings/SettingValueAdapterTwoLines;->values:[Lcom/waze/voice/VoiceData;

    .line 90
    invoke-virtual {p0}, Lcom/waze/settings/SettingValueAdapterTwoLines;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

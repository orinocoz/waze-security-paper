.class public Lcom/waze/inbox/InboxMsgListAdapter;
.super Landroid/widget/BaseAdapter;
.source "InboxMsgListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;,
        Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final MIN_LIST_COUNT:I

.field private final mCheckBoxContainerClickListener:Landroid/view/View$OnClickListener;

.field private final mCheckedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mContext:Lcom/waze/ifs/ui/ActivityBase;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/inbox/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mLoading:Z

.field private final mUserCheckedListener:Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/ArrayList;Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "onCheckListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/inbox/InboxMessage;",
            ">;",
            "Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/inbox/InboxMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 200
    new-instance v0, Lcom/waze/inbox/InboxMsgListAdapter$1;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxMsgListAdapter$1;-><init>(Lcom/waze/inbox/InboxMsgListAdapter;)V

    iput-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 221
    new-instance v0, Lcom/waze/inbox/InboxMsgListAdapter$2;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxMsgListAdapter$2;-><init>(Lcom/waze/inbox/InboxMsgListAdapter;)V

    iput-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckBoxContainerClickListener:Landroid/view/View$OnClickListener;

    .line 243
    const/4 v0, 0x7

    iput v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->MIN_LIST_COUNT:I

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mLoading:Z

    .line 24
    iput-object p1, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 25
    iput-object p2, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    .line 26
    iput-object p3, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mUserCheckedListener:Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/waze/inbox/InboxMsgListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/inbox/InboxMsgListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/inbox/InboxMsgListAdapter;)Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mUserCheckedListener:Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;

    return-object v0
.end method

.method private filterChecked()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    return-void

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Lcom/waze/inbox/InboxMessage;

    invoke-direct {v1}, Lcom/waze/inbox/InboxMessage;-><init>()V

    .line 60
    .local v1, obj:Lcom/waze/inbox/InboxMessage;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, i:I
    invoke-virtual {p0}, Lcom/waze/inbox/InboxMsgListAdapter;->clearChecked()V

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/waze/inbox/InboxMsgListAdapter;->refresh()V

    .line 49
    return-void

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/inbox/InboxMessage;

    iget-object v1, v1, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearChecked()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    invoke-virtual {p0}, Lcom/waze/inbox/InboxMsgListAdapter;->refresh()V

    .line 38
    return-void
.end method

.method public getCheckedIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x7

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, count:I
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    :cond_0
    if-le v0, v1, :cond_1

    .line 89
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f080056

    const/16 v7, 0x8

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, holder:Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;
    if-nez p2, :cond_1

    .line 110
    iget-object v4, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 111
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03006b

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    if-nez v1, :cond_0

    .line 125
    new-instance v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;

    .end local v1           #holder:Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;-><init>(Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;)V

    .line 126
    .restart local v1       #holder:Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;
    const v4, 0x7f090334

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->title:Landroid/widget/TextView;

    .line 127
    const v4, 0x7f090335

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->preview:Landroid/widget/TextView;

    .line 128
    const v4, 0x7f090331

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->time:Landroid/widget/TextView;

    .line 129
    const v4, 0x7f09032e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->root:Landroid/view/View;

    .line 130
    const v4, 0x7f09032f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->contentContainer:Landroid/widget/RelativeLayout;

    .line 131
    const v4, 0x7f090333

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBox:Landroid/widget/CheckBox;

    .line 132
    const v4, 0x7f090332

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBoxContainer:Landroid/widget/RelativeLayout;

    .line 133
    const v4, 0x7f090336

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->progress:Landroid/widget/ProgressBar;

    .line 134
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 136
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBoxContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckBoxContainerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 143
    iget-object v4, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/inbox/InboxMessage;

    .line 144
    .local v3, item:Lcom/waze/inbox/InboxMessage;
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-boolean v4, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mLoading:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2

    .line 148
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->contentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    .end local v3           #item:Lcom/waze/inbox/InboxMessage;
    :goto_1
    return-object p2

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;
    check-cast v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;

    .restart local v1       #holder:Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;
    goto/16 :goto_0

    .line 154
    .restart local v3       #item:Lcom/waze/inbox/InboxMessage;
    :cond_2
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->contentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->title:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/waze/inbox/InboxMessage;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->preview:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/waze/inbox/InboxMessage;->preview:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->time:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/waze/inbox/InboxMessage;->sentFString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-boolean v4, v3, Lcom/waze/inbox/InboxMessage;->unread:Z

    if-eqz v4, :cond_3

    .line 165
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const v7, 0x7f06005c

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 166
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->root:Landroid/view/View;

    const v6, 0x7f080022

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    :goto_2
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBoxContainer:Landroid/widget/RelativeLayout;

    iget-object v6, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBox:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 177
    iget-object v4, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    .local v0, checked:Z
    :goto_3
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->chkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 170
    .end local v0           #checked:Z
    :cond_3
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const v7, 0x7f06005d

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 171
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    move v0, v5

    .line 177
    goto :goto_3

    .line 183
    .end local v3           #item:Lcom/waze/inbox/InboxMessage;
    :cond_5
    iget-object v4, v1, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;->root:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/waze/inbox/InboxMsgListAdapter;->clearChecked()V

    .line 32
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/waze/inbox/InboxMsgListAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/waze/inbox/InboxMsgListAdapter;->mLoading:Z

    .line 73
    return-void
.end method

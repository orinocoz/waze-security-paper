.class public Lcom/waze/rtalerts/RTAlertsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RTAlertsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/rtalerts/RTAlertsAlertData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mContext:Landroid/app/Activity;

    .line 23
    return-void
.end method

.method public static getView(Landroid/app/Activity;Landroid/view/View;Lcom/waze/rtalerts/RTAlertsAlertData;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "convertView"
    .parameter "alertData"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 66
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v1

    .line 67
    .local v1, ntvMgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;

    .line 69
    .local v0, holder:Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;

    .end local v0           #holder:Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;-><init>(Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;)V

    .line 75
    .restart local v0       #holder:Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;
    const v3, 0x7f0905ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->container:Landroid/view/View;

    .line 76
    const v3, 0x7f0905d7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->icon:Landroid/widget/ImageView;

    .line 77
    const v3, 0x7f0905cd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertType:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0905ce

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertLoc:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f0905d0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertBy:Landroid/widget/TextView;

    .line 80
    const v3, 0x7f0905d2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupIcon:Landroid/widget/ImageView;

    .line 81
    const v3, 0x7f0905d3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupDesc:Landroid/widget/TextView;

    .line 82
    const v3, 0x7f0905d1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupContainer:Landroid/view/View;

    .line 83
    const v3, 0x7f0905d5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->comments:Landroid/widget/TextView;

    .line 84
    const v3, 0x7f0905d6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->thanks:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f0905cf

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertDesc:Landroid/widget/TextView;

    .line 86
    const v3, 0x7f0905d8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->distance:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0905d9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->distanceUnit:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0905da

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->distanceNote:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :cond_0
    iget-object v3, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mIcon:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, res_id:I
    if-lez v2, :cond_1

    .line 97
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    :cond_1
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->container:Landroid/view/View;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertType:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertLoc:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mLocationStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 103
    :cond_2
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertDesc:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertBy:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mReportedBy:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mTimeRelative:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mGroupName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 113
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupContainer:Landroid/view/View;

    .line 115
    new-instance v4, Lcom/waze/rtalerts/RTAlertsListAdapter$1;

    invoke-direct {v4, p0, p2}, Lcom/waze/rtalerts/RTAlertsListAdapter$1;-><init>(Landroid/app/Activity;Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 114
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupIcon:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mGroupIcon:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupDesc:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mGroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_1
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->comments:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f070187

    invoke-virtual {v1, v5}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getLangStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumComments:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->thanks:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x7f070188

    invoke-virtual {v1, v5}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getLangStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumThumbsUp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->distance:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mDistanceStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->distanceUnit:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->distanceNote:Landroid/widget/TextView;

    const v4, 0x7f070189

    invoke-virtual {v1, v4}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getLangStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-object p1

    .line 107
    :cond_3
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertDesc:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->alertDesc:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/waze/rtalerts/RTAlertsAlertData;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 127
    :cond_4
    iget-object v3, v0, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;->groupContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 55
    .local v1, itemData:Lcom/waze/rtalerts/RTAlertsAlertData;
    if-nez p2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0300da

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v2, p2, v1}, Lcom/waze/rtalerts/RTAlertsListAdapter;->getView(Landroid/app/Activity;Landroid/view/View;Lcom/waze/rtalerts/RTAlertsAlertData;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/rtalerts/RTAlertsAlertData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/rtalerts/RTAlertsAlertData;>;"
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsListAdapter;->mItems:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

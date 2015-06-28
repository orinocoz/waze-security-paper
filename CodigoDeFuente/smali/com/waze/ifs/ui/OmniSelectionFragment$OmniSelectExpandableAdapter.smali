.class public Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;
.super Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OmniSelectExpandableAdapter"
.end annotation


# static fields
.field private static MAX_GROUPS:I


# instance fields
.field _groups:[I

.field _numGroups:I

.field prevGroup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 674
    const/16 v0, 0x40

    sput v0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->MAX_GROUPS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;-><init>(Landroid/content/Context;)V

    .line 676
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->prevGroup:I

    .line 680
    sget v0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->MAX_GROUPS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    .line 681
    return-void
.end method


# virtual methods
.method protected calcGroups([Lcom/waze/settings/SettingsValue;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 691
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 692
    iput v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    .line 694
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 702
    :cond_0
    return-void

    .line 695
    :cond_1
    aget-object v1, p1, v0

    .line 696
    .local v1, sv:Lcom/waze/settings/SettingsValue;
    iget-boolean v2, v1, Lcom/waze/settings/SettingsValue;->isHeader:Z

    if-eqz v2, :cond_2

    .line 697
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    iget v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    aput v0, v2, v3

    .line 698
    iget v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    .line 700
    :cond_2
    iget v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    sget v3, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->MAX_GROUPS:I

    if-eq v2, v3, :cond_0

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->values:[Lcom/waze/settings/SettingsValue;

    invoke-virtual {p0, p1, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getChildIndex(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 742
    invoke-virtual {p0, p1, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getChildIndex(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildIndex(II)I
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    aget v0, v0, p1

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getChildIndex(II)I

    move-result v1

    .line 769
    .local v1, childIndex:I
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v4, v4

    if-ne v1, v4, :cond_0

    .line 771
    new-instance v3, Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 772
    .local v3, v:Landroid/view/View;
    const v4, 0x7f02007c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 795
    .end local v3           #v:Landroid/view/View;
    :goto_0
    return-object v3

    .line 776
    :cond_0
    instance-of v4, p4, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    const/4 p4, 0x0

    .line 778
    :cond_1
    invoke-virtual {p0, v1, p4, p5}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 779
    .local v0, child:Landroid/view/View;
    const v4, 0x7f0904c7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 780
    .local v2, container:Landroid/view/View;
    if-nez p2, :cond_3

    .line 781
    if-eqz p3, :cond_2

    .line 782
    const v4, 0x7f020209

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 793
    :goto_1
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    move-object v3, v0

    .line 795
    goto :goto_0

    .line 784
    :cond_2
    const v4, 0x7f02020a

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 787
    :cond_3
    if-nez p3, :cond_4

    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    .line 788
    :cond_4
    const v4, 0x7f020207

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 790
    :cond_5
    const v4, 0x7f020208

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 712
    iget v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    add-int/lit8 v2, p1, 0x1

    aget v0, v1, v2

    .line 718
    .local v0, nextGroupIndex:I
    :goto_0
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    aget v1, v1, p1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 715
    .end local v0           #nextGroupIndex:I
    :cond_0
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v1, v1

    add-int/lit8 v0, v1, 0x1

    .restart local v0       #nextGroupIndex:I
    goto :goto_0
.end method

.method public getCombinedChildId(JJ)J
    .locals 2
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 813
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCombinedGroupId(J)J
    .locals 2
    .parameter "groupId"

    .prologue
    .line 818
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->values:[Lcom/waze/settings/SettingsValue;

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_numGroups:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 737
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getChildIndex(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 756
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->_groups:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2, p3, p4}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 757
    .local v1, group:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 758
    const v2, 0x7f0904c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, container:Landroid/view/View;
    const v2, 0x7f020225

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 760
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 762
    .end local v0           #container:Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 748
    const/4 v0, -0x1

    .line 750
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 800
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 809
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 806
    return-void
.end method

.method public setValues([Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 685
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 687
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->calcGroups([Lcom/waze/settings/SettingsValue;)V

    .line 688
    return-void
.end method

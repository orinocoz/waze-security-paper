.class Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;
.super Landroid/widget/Filter;
.source "OmniSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    .line 847
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12
    .parameter "constraint"

    .prologue
    const/high16 v11, 0x3f80

    .line 859
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 860
    .local v4, results:Landroid/widget/Filter$FilterResults;
    iget-object v6, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    iget-object v6, v6, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->originalValues:[Lcom/waze/settings/SettingsValue;

    array-length v6, v6

    new-array v0, v6, [Lcom/waze/settings/SettingsValue;

    .line 864
    .local v0, filtered:[Lcom/waze/settings/SettingsValue;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 865
    const/4 v2, 0x0

    .line 866
    .local v2, i:I
    iget-object v6, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    iget-object v7, v6, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->originalValues:[Lcom/waze/settings/SettingsValue;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v8, :cond_0

    .line 876
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #filtered:[Lcom/waze/settings/SettingsValue;
    check-cast v0, [Lcom/waze/settings/SettingsValue;

    .line 877
    .restart local v0       #filtered:[Lcom/waze/settings/SettingsValue;
    iget-object v6, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    invoke-virtual {v6, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->calcGroups([Lcom/waze/settings/SettingsValue;)V

    .line 879
    const/4 v3, 0x0

    .line 880
    .local v3, j:I
    array-length v6, v0

    new-array v1, v6, [Lcom/waze/settings/SettingsValue;

    .line 881
    .local v1, filtered2:[Lcom/waze/settings/SettingsValue;
    const/4 v2, 0x0

    :goto_1
    array-length v6, v0

    if-lt v2, v6, :cond_3

    .line 895
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #filtered:[Lcom/waze/settings/SettingsValue;
    check-cast v0, [Lcom/waze/settings/SettingsValue;

    .line 896
    .restart local v0       #filtered:[Lcom/waze/settings/SettingsValue;
    iget-object v6, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    invoke-virtual {v6, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->calcGroups([Lcom/waze/settings/SettingsValue;)V

    .line 898
    array-length v6, v0

    iput v6, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 899
    iput-object v0, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 901
    return-object v4

    .line 866
    .end local v1           #filtered2:[Lcom/waze/settings/SettingsValue;
    .end local v3           #j:I
    :cond_0
    aget-object v5, v7, v6

    .line 868
    .local v5, sv:Lcom/waze/settings/SettingsValue;
    iget-object v9, v5, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v9, v10}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$0(Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    iput v9, v5, Lcom/waze/settings/SettingsValue;->rank:F

    .line 870
    iget v9, v5, Lcom/waze/settings/SettingsValue;->rank:F

    cmpl-float v9, v9, v11

    if-gez v9, :cond_1

    iget-boolean v9, v5, Lcom/waze/settings/SettingsValue;->isHeader:Z

    if-eqz v9, :cond_2

    .line 871
    :cond_1
    aput-object v5, v0, v2

    .line 872
    add-int/lit8 v2, v2, 0x1

    .line 866
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 882
    .end local v5           #sv:Lcom/waze/settings/SettingsValue;
    .restart local v1       #filtered2:[Lcom/waze/settings/SettingsValue;
    .restart local v3       #j:I
    :cond_3
    aget-object v5, v0, v2

    .line 883
    .restart local v5       #sv:Lcom/waze/settings/SettingsValue;
    iget v6, v5, Lcom/waze/settings/SettingsValue;->rank:F

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_5

    .line 884
    aput-object v5, v1, v3

    .line 885
    add-int/lit8 v3, v3, 0x1

    .line 881
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 886
    :cond_5
    iget-boolean v6, v5, Lcom/waze/settings/SettingsValue;->isHeader:Z

    if-eqz v6, :cond_4

    .line 888
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    iget-boolean v6, v6, Lcom/waze/settings/SettingsValue;->isHeader:Z

    if-nez v6, :cond_4

    .line 889
    aput-object v5, v1, v3

    .line 890
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, [Lcom/waze/settings/SettingsValue;

    iput-object v0, v1, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->values:[Lcom/waze/settings/SettingsValue;

    .line 853
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->notifyDataSetChanged()V

    .line 854
    return-void
.end method

.class Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;
.super Landroid/widget/Filter;
.source "OmniSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    .line 938
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14
    .parameter "constraint"

    .prologue
    .line 950
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 951
    .local v3, results:Landroid/widget/Filter$FilterResults;
    iget-object v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    iget-object v5, v5, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->originalValues:[Lcom/waze/settings/SettingsValue;

    array-length v5, v5

    new-array v1, v5, [Lcom/waze/settings/SettingsValue;

    .line 955
    .local v1, filtered:[Lcom/waze/settings/SettingsValue;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 956
    const/4 v2, 0x0

    .line 957
    .local v2, i:I
    iget-object v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    iget-object v7, v5, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->originalValues:[Lcom/waze/settings/SettingsValue;

    array-length v8, v7

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_0

    .line 980
    iput v2, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 981
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #filtered:[Lcom/waze/settings/SettingsValue;
    check-cast v1, [Lcom/waze/settings/SettingsValue;

    .line 982
    .restart local v1       #filtered:[Lcom/waze/settings/SettingsValue;
    new-instance v5, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1$1;

    invoke-direct {v5, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1$1;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;)V

    invoke-static {v1, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 991
    iput-object v1, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 992
    return-object v3

    .line 957
    :cond_0
    aget-object v4, v7, v6

    .line 958
    .local v4, sv:Lcom/waze/settings/SettingsValue;
    iget-object v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    iget-object v5, v5, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->_last:Lcom/waze/settings/SettingsValue;

    if-ne v4, v5, :cond_2

    .line 959
    const/4 v5, 0x0

    iput v5, v4, Lcom/waze/settings/SettingsValue;->rank:F

    .line 960
    aput-object v4, v1, v2

    .line 961
    add-int/lit8 v2, v2, 0x1

    .line 957
    :cond_1
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 963
    :cond_2
    iget-object v5, v4, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v5, v9}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$0(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Lcom/waze/settings/SettingsValue;->rank:F

    .line 964
    iget-object v5, v4, Lcom/waze/settings/SettingsValue;->aliases:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 965
    iget-object v9, v4, Lcom/waze/settings/SettingsValue;->aliases:[Ljava/lang/String;

    array-length v10, v9

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v10, :cond_4

    .line 973
    :cond_3
    iget v5, v4, Lcom/waze/settings/SettingsValue;->rank:F

    const/high16 v9, 0x3f80

    cmpl-float v5, v5, v9

    if-ltz v5, :cond_1

    .line 974
    aput-object v4, v1, v2

    .line 975
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 965
    :cond_4
    aget-object v0, v9, v5

    .line 966
    .local v0, alias:Ljava/lang/String;
    iget v11, v4, Lcom/waze/settings/SettingsValue;->rank:F

    const/high16 v12, 0x4000

    cmpl-float v11, v11, v12

    if-gez v11, :cond_3

    .line 967
    if-eqz v0, :cond_5

    .line 969
    iget v11, v4, Lcom/waze/settings/SettingsValue;->rank:F

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v12, v13}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$0(Ljava/lang/String;Ljava/lang/String;)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 968
    iput v11, v4, Lcom/waze/settings/SettingsValue;->rank:F

    .line 965
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 943
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, [Lcom/waze/settings/SettingsValue;

    iput-object v0, v1, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    .line 944
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;->this$1:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->notifyDataSetChanged()V

    .line 945
    return-void
.end method

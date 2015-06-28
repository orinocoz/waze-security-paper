.class public Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;
.super Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredOmniSelectAdapter"
.end annotation


# instance fields
.field _last:Lcom/waze/settings/SettingsValue;

.field originalValues:[Lcom/waze/settings/SettingsValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;-><init>(Landroid/content/Context;)V

    .line 916
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 938
    new-instance v0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;

    invoke-direct {v0, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;)V

    .line 996
    .local v0, filter:Landroid/widget/Filter;
    return-object v0
.end method

.method public getOriginalIndex(Lcom/waze/settings/SettingsValue;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 929
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->originalValues:[Lcom/waze/settings/SettingsValue;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 932
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 930
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->originalValues:[Lcom/waze/settings/SettingsValue;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setLast(Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter "last"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->_last:Lcom/waze/settings/SettingsValue;

    .line 926
    return-void
.end method

.method public setValues([Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 920
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->originalValues:[Lcom/waze/settings/SettingsValue;

    .line 921
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 922
    return-void
.end method

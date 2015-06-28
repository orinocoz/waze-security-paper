.class public Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;
.super Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexedOmniSelectAdapter"
.end annotation


# static fields
.field private static MAX_SECTIONS:I


# instance fields
.field _numSections:I

.field _positionForSection:[I

.field _sectionForPosition:[I

.field _sections:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 619
    const/16 v0, 0x40

    sput v0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->MAX_SECTIONS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;-><init>(Landroid/content/Context;)V

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    .line 627
    sget v0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->MAX_SECTIONS:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sections:[Ljava/lang/String;

    .line 628
    sget v0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->MAX_SECTIONS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_positionForSection:[I

    .line 629
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_positionForSection:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_positionForSection:[I

    aget v0, v0, p1

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sectionForPosition:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sectionForPosition:[I

    aget v0, v0, p1

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sections:[Ljava/lang/String;

    return-object v0
.end method

.method public setValues([Lcom/waze/settings/SettingsValue;)V
    .locals 7
    .parameter "values"

    .prologue
    .line 633
    array-length v4, p1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sectionForPosition:[I

    .line 634
    const/4 v1, -0x1

    .line 635
    .local v1, lastSection:I
    const/4 v0, 0x0

    .line 636
    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_1

    .line 648
    :cond_0
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sections:[Ljava/lang/String;

    iget v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sections:[Ljava/lang/String;

    .line 649
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_positionForSection:[I

    iget v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_positionForSection:[I

    .line 650
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 651
    return-void

    .line 637
    :cond_1
    aget-object v3, p1, v0

    .line 638
    .local v3, sv:Lcom/waze/settings/SettingsValue;
    iget-object v4, v3, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 639
    .local v2, section:C
    if-eq v2, v1, :cond_2

    .line 640
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sections:[Ljava/lang/String;

    iget v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 641
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_positionForSection:[I

    iget v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    aput v0, v4, v5

    .line 642
    move v1, v2

    .line 643
    iget v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    .line 645
    :cond_2
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_sectionForPosition:[I

    iget v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v0

    .line 646
    iget v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->_numSections:I

    sget v5, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;->MAX_SECTIONS:I

    if-eq v4, v5, :cond_0

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

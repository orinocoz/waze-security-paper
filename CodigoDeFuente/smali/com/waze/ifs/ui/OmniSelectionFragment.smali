.class public Lcom/waze/ifs/ui/OmniSelectionFragment;
.super Landroid/app/Fragment;
.source "OmniSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;,
        Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;,
        Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;,
        Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;,
        Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;,
        Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;,
        Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;
    }
.end annotation


# static fields
.field static final OPTIMIZE:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

.field private mAddUserInput:Lcom/waze/settings/SettingsValue;

.field private mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

.field private mEditBoxHint:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mIsAutoComplete:Z

.field private mIsExpandable:Z

.field private mIsFilter:Z

.field private mIsIndexed:Z

.field private mIsMultiSelect:Z

.field private mIsPortrait:Z

.field private mIsSearch:Z

.field private mIsUserInput:Z

.field private mListView:Landroid/widget/ListView;

.field private mPrevGroup:I

.field private mSubTitle:Ljava/lang/String;

.field private mTimesEnteredSearch:I

.field private mTitleText:Ljava/lang/String;

.field private mTopOptionIcon:I

.field private mTopOptionText:Ljava/lang/String;

.field private mUserInputFormat:Ljava/lang/String;

.field private mValues:[Lcom/waze/settings/SettingsValue;

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    .line 1017
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    .line 58
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z

    .line 59
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    .line 60
    iput-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsIndexed:Z

    .line 62
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    .line 63
    iput-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTitleText:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditBoxHint:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mSubTitle:Ljava/lang/String;

    .line 66
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    .line 67
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    .line 68
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    .line 69
    iput-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionText:Ljava/lang/String;

    .line 70
    iput v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionIcon:I

    .line 76
    iput v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I

    .line 77
    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsPortrait:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mPrevGroup:I

    .line 48
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1020
    invoke-static {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z

    return v0
.end method

.method static synthetic access$10(Lcom/waze/ifs/ui/OmniSelectionFragment;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/ifs/ui/OmniSelectionFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I

    return v0
.end method

.method static synthetic access$12(Lcom/waze/ifs/ui/OmniSelectionFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I

    return-void
.end method

.method static synthetic access$13(Lcom/waze/ifs/ui/OmniSelectionFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mPrevGroup:I

    return-void
.end method

.method static synthetic access$14(Lcom/waze/ifs/ui/OmniSelectionFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mPrevGroup:I

    return v0
.end method

.method static synthetic access$15(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    return v0
.end method

.method static synthetic access$2(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    return v0
.end method

.method static synthetic access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    return v0
.end method

.method static synthetic access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/ifs/ui/OmniSelectionFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    return v0
.end method

.method static synthetic access$9(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    return-object v0
.end method

.method private static calcRank(Ljava/lang/String;Ljava/lang/String;)F
    .locals 4
    .parameter "test"
    .parameter "guess"

    .prologue
    .line 1021
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    .line 1028
    :goto_0
    return v2

    .line 1022
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 1023
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1024
    .local v1, length:I
    const/4 v0, 0x2

    .line 1025
    .local v0, allowedMistakes:I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    const/4 v0, 0x0

    .line 1026
    :cond_2
    const/4 v2, 0x4

    if-gt v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1028
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v2

    goto :goto_0
.end method

.method private static calcRank(Ljava/lang/String;Ljava/lang/String;I)F
    .locals 10
    .parameter "test"
    .parameter "guess"
    .parameter "allowedMistakes"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 1032
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    int-to-float v6, p2

    mul-float v5, v6, v7

    .line 1063
    :goto_0
    return v5

    .line 1033
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1034
    .local v0, c:C
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1035
    .local v1, index:I
    if-gez v1, :cond_2

    .line 1036
    if-lez p2, :cond_1

    .line 1037
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, -0x1

    invoke-static {p0, v6, v7}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v5

    goto :goto_0

    .line 1039
    :cond_1
    const/high16 v6, -0x4100

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v7, v7

    mul-float v5, v6, v7

    goto :goto_0

    .line 1042
    :cond_2
    const/4 v5, 0x0

    .line 1043
    .local v5, score:F
    if-eqz v1, :cond_3

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1045
    :cond_3
    const/high16 v5, 0x3f00

    .line 1051
    :goto_1
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v4

    .line 1052
    .local v4, rankTake:F
    add-float v6, v4, v5

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    add-float/2addr v5, v4

    goto :goto_0

    .line 1048
    .end local v4           #rankTake:F
    :cond_4
    int-to-float v6, v1

    mul-float/2addr v6, v7

    sub-float v5, v7, v6

    goto :goto_1

    .line 1054
    .restart local v4       #rankTake:F
    :cond_5
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v3

    .line 1055
    .local v3, rankSkip:F
    add-float v6, v3, v5

    cmpl-float v6, v6, v9

    if-lez v6, :cond_6

    add-float/2addr v5, v3

    goto :goto_0

    .line 1057
    :cond_6
    if-lez p2, :cond_7

    .line 1058
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, -0x1

    invoke-static {p0, v6, v7}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v2

    .line 1059
    .local v2, rankMistake:F
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v5, v6

    .line 1060
    goto :goto_0

    .line 1061
    .end local v2           #rankMistake:F
    :cond_7
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0
.end method

.method private setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    .locals 5
    .parameter "pos"
    .parameter "selected"
    .parameter "bUserInput"

    .prologue
    const/4 v4, 0x0

    .line 469
    if-nez p2, :cond_0

    .line 488
    :goto_0
    return-void

    .line 470
    :cond_0
    iput-boolean v4, p2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 472
    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    if-eqz v2, :cond_2

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v3, 0x7f0904c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 475
    .local v1, myEditText:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 476
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 479
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #myEditText:Landroid/widget/EditText;
    :cond_2
    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    if-eqz v2, :cond_3

    .line 480
    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    if-eqz v2, :cond_4

    .line 481
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    invoke-virtual {v2, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->getOriginalIndex(Lcom/waze/settings/SettingsValue;)I

    move-result p1

    .line 487
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;

    iget-object v3, p2, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    iget-object v4, p2, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-interface {v2, p1, v3, v4, p3}, Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;->omniSelected(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 483
    :cond_4
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    invoke-virtual {v2, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->getOriginalIndex(Lcom/waze/settings/SettingsValue;)I

    move-result p1

    goto :goto_1
.end method

.method public static testCalcRank()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1068
    const-string v1, "car rental"

    const-string v4, "car"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1069
    .local v0, rank:F
    cmpl-float v1, v0, v6

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1071
    const-string v1, "car rental"

    const-string v4, "rent"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1072
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1074
    const-string v1, "car rental"

    const-string v4, "re"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1075
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1077
    const-string v1, "car rental"

    const-string v4, "boat"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1078
    cmpg-float v1, v0, v5

    if-gez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1080
    const-string v1, "waze"

    const-string v4, "ee"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1081
    cmpg-float v1, v0, v5

    if-gez v1, :cond_4

    move v1, v2

    :goto_4
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1083
    const-string v1, "college / university"

    const-string v4, "uni"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1084
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_5

    move v1, v2

    :goto_5
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1086
    const-string v1, "college / university"

    const-string v4, "univ"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1087
    cmpl-float v1, v0, v6

    if-lez v1, :cond_6

    move v1, v2

    :goto_6
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1089
    const-string v1, "college / university"

    const-string v4, "univer"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1090
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    move v1, v2

    :goto_7
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1092
    const-string v1, "college / university"

    const-string v4, "universit"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1093
    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    move v1, v2

    :goto_8
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1095
    const-string v1, "waze"

    const-string v4, "wazeeeeee"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1096
    cmpg-float v1, v0, v5

    if-gez v1, :cond_9

    move v1, v2

    :goto_9
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1098
    const-string v1, "waze"

    const-string v4, "wazeeeeeeee"

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1099
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_a

    move v1, v2

    :goto_a
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1101
    const-string v1, "waze"

    const-string v4, ""

    invoke-static {v1, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->calcRank(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1102
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_b

    :goto_b
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1103
    return-void

    :cond_0
    move v1, v3

    .line 1069
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 1072
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 1075
    goto/16 :goto_2

    :cond_3
    move v1, v3

    .line 1078
    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 1081
    goto/16 :goto_4

    :cond_5
    move v1, v3

    .line 1084
    goto :goto_5

    :cond_6
    move v1, v3

    .line 1087
    goto :goto_6

    :cond_7
    move v1, v3

    .line 1090
    goto :goto_7

    :cond_8
    move v1, v3

    .line 1093
    goto :goto_8

    :cond_9
    move v1, v3

    .line 1096
    goto :goto_9

    :cond_a
    move v1, v3

    .line 1099
    goto :goto_a

    :cond_b
    move v2, v3

    .line 1102
    goto :goto_b
.end method

.method public static testValues1()[Lcom/waze/settings/SettingsValue;
    .locals 14

    .prologue
    .line 1106
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 1107
    .local v7, r:Ljava/util/Random;
    const/16 v10, 0x64

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v3, v10, 0x32

    .line 1108
    .local v3, length:I
    const/16 v5, 0xa

    .line 1109
    .local v5, letterRange:I
    new-array v8, v3, [Lcom/waze/settings/SettingsValue;

    .line 1110
    .local v8, ret:[Lcom/waze/settings/SettingsValue;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 1127
    return-object v8

    .line 1111
    :cond_0
    new-instance v10, Lcom/waze/settings/SettingsValue;

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v10, v8, v0

    .line 1112
    aget-object v10, v8, v0

    const-string v11, ""

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 1113
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 1114
    .local v9, words:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v9, :cond_1

    .line 1124
    aget-object v10, v8, v0

    aget-object v11, v8, v0

    iget-object v11, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    .line 1125
    aget-object v10, v8, v0

    aget-object v11, v8, v0

    iget-object v11, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1115
    :cond_1
    const/4 v10, 0x6

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v6, v10, 0x3

    .line 1116
    .local v6, letters:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2
    if-lt v2, v6, :cond_3

    .line 1120
    add-int/lit8 v10, v9, -0x1

    if-ge v1, v10, :cond_2

    .line 1121
    aget-object v10, v8, v0

    iget-object v11, v10, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x20

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 1114
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1117
    :cond_3
    invoke-virtual {v7, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    if-nez v2, :cond_4

    const/16 v10, 0x41

    :goto_3
    add-int/2addr v10, v11

    int-to-char v4, v10

    .line 1118
    .local v4, letter:C
    aget-object v10, v8, v0

    iget-object v11, v10, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1117
    .end local v4           #letter:C
    :cond_4
    const/16 v10, 0x61

    goto :goto_3
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 155
    if-eqz p3, :cond_a

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mIsIndexed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsIndexed:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsIndexed:Z

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mIsSearch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mIsFilter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mIsMultiSelect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mIsUserInput"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mUserInputFormat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mIsExpandable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mIsAutoComplete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mTitleText"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTitleText:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTitleText:Ljava/lang/String;

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mEditBoxHint"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditBoxHint:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditBoxHint:Ljava/lang/String;

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mSubTitle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mSubTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mSubTitle:Ljava/lang/String;

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mValues"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, [Lcom/waze/settings/SettingsValue;

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mTimesEnteredSearch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 168
    iput v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mTopOptionText"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionText:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionText:Ljava/lang/String;

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mTopOptionIcon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionIcon:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionIcon:I

    .line 173
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    if-eqz v7, :cond_0

    .line 174
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    const/4 v7, 0x1

    .line 185
    :goto_1
    iput-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsPortrait:Z

    .line 188
    const v7, 0x7f03009b

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    .line 189
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f090058

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/waze/view/title/TitleBarTextButton;

    .line 190
    .local v5, titleBar:Lcom/waze/view/title/TitleBarTextButton;
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    if-eqz v7, :cond_c

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTitleText:Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 191
    invoke-virtual {v5, v7, v8, v9}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_2
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$1;

    invoke-direct {v7, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$1;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v5, v7}, Lcom/waze/view/title/TitleBarTextButton;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionText:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 211
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 212
    .local v6, top:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionIcon:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$2;

    invoke-direct {v7, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$2;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .end local v6           #top:Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mSubTitle:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 225
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f09027f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsTitleText;

    .line 226
    .local v4, subView:Lcom/waze/settings/SettingsTitleText;
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 227
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 230
    .end local v4           #subView:Lcom/waze/settings/SettingsTitleText;
    :cond_3
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    if-eqz v7, :cond_d

    .line 231
    :cond_4
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    .line 234
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsPortrait:Z

    if-eqz v7, :cond_5

    .line 235
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 238
    :cond_5
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    if-eqz v7, :cond_8

    .line 239
    :cond_6
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/waze/ifs/ui/OmniSelectionFragment$3;

    invoke-direct {v8, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$3;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 271
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/waze/ifs/ui/OmniSelectionFragment$4;

    invoke-direct {v8, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$4;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 293
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v7, :cond_7

    .line 294
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditBoxHint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 296
    :cond_7
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    if-eqz v7, :cond_8

    .line 297
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    .line 298
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 299
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 300
    .local v1, autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$5;

    invoke-direct {v7, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$5;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    .end local v1           #autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    :cond_8
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/waze/ifs/ui/OmniSelectionFragment$6;

    invoke-direct {v8, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$6;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 326
    :goto_3
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    if-eqz v7, :cond_e

    .line 327
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    .line 339
    :goto_4
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mListView:Landroid/widget/ListView;

    .line 341
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsIndexed:Z

    if-eqz v7, :cond_9

    .line 342
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 345
    :cond_9
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    if-eqz v7, :cond_12

    .line 346
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mListView:Landroid/widget/ListView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 348
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    .line 349
    .local v3, lv:Landroid/widget/ExpandableListView;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 350
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    check-cast v7, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 352
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$7;

    invoke-direct {v7, p0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment$7;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;Landroid/widget/ExpandableListView;)V

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 387
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$8;

    invoke-direct {v7, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$8;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 411
    iput-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mListView:Landroid/widget/ListView;

    .line 416
    .end local v3           #lv:Landroid/widget/ExpandableListView;
    :goto_5
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 417
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidateViews()V

    .line 419
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/waze/ifs/ui/OmniSelectionFragment$9;

    invoke-direct {v8, p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$9;-><init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 452
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    return-object v7

    .line 177
    .end local v5           #titleBar:Lcom/waze/view/title/TitleBarTextButton;
    :cond_a
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    if-eqz v7, :cond_0

    .line 178
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    array-length v2, v7

    .line 179
    .local v2, length:I
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    add-int/lit8 v8, v2, 0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/waze/settings/SettingsValue;

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    .line 180
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    .line 181
    new-instance v8, Lcom/waze/settings/SettingsValue;

    const-string v9, ""

    iget-object v10, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;

    .line 180
    aput-object v8, v7, v2

    goto/16 :goto_0

    .line 186
    .end local v2           #length:I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 194
    .restart local v5       #titleBar:Lcom/waze/view/title/TitleBarTextButton;
    :cond_c
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTitleText:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 323
    :cond_d
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v8, 0x7f0904c3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 328
    :cond_e
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    if-eqz v7, :cond_f

    .line 329
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    .line 330
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    check-cast v7, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->setLast(Lcom/waze/settings/SettingsValue;)V

    .line 331
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setShowLastItem(Z)V

    goto/16 :goto_4

    .line 332
    :cond_f
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsIndexed:Z

    if-eqz v7, :cond_10

    .line 333
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;

    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$IndexedOmniSelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    goto/16 :goto_4

    .line 334
    :cond_10
    iget-boolean v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    if-eqz v7, :cond_11

    .line 335
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;

    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    goto/16 :goto_4

    .line 337
    :cond_11
    new-instance v7, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    goto/16 :goto_4

    .line 413
    :cond_12
    iget-object v7, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_5
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 457
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 458
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->r:Landroid/view/View;

    const v3, 0x7f0904c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 460
    .local v1, myEditText:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 461
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    if-nez v2, :cond_1

    .line 462
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsPortrait:Z

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsIndexed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsIndexed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsSearch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsFilter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsMultiSelect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsUserInput"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mUserInputFormat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsExpandable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsAutoComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mTitleText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mEditBoxHint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditBoxHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSubTitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mValues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mTimesEnteredSearch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mTopOptionText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mTopOptionIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionIcon:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    return-void
.end method

.method public setAutoComplete(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z

    .line 104
    return-void
.end method

.method public setEditBoxHint(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mEditBoxHint:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setExpandable(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z

    .line 108
    return-void
.end method

.method public setFilter(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z

    .line 91
    return-void
.end method

.method public setIndexed(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsIndexed:Z

    .line 83
    return-void
.end method

.method public setMultiSelect(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z

    .line 95
    return-void
.end method

.method public setSearch(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsSearch:Z

    .line 87
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mSubTitle:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTitleText:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTopOption(Ljava/lang/String;I)V
    .locals 0
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionText:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mTopOptionIcon:I

    .line 129
    return-void
.end method

.method public setUserInput(ZLjava/lang/String;)V
    .locals 0
    .parameter "on"
    .parameter "format"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z

    .line 99
    iput-object p2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setValues([Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter "vals"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;

    .line 124
    return-void
.end method

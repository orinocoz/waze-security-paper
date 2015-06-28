.class public Lcom/waze/ifs/ui/OmniSelectionActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "OmniSelectionActivity.java"

# interfaces
.implements Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;


# static fields
.field public static final ARG_EDIT_BOX_HINT:Ljava/lang/String;

.field public static final ARG_EXPANDABLE:Ljava/lang/String;

.field public static final ARG_FILTER:Ljava/lang/String;

.field public static final ARG_FWD_INTENT:Ljava/lang/String;

.field public static final ARG_INDEXED:Ljava/lang/String;

.field public static final ARG_MULTI_SELECT:Ljava/lang/String;

.field public static final ARG_SEARCH:Ljava/lang/String;

.field public static final ARG_SUBTITLE:Ljava/lang/String;

.field public static final ARG_TITLE:Ljava/lang/String;

.field public static final ARG_USER_INPUT:Ljava/lang/String;

.field public static final ARG_USER_INPUT_FORMAT:Ljava/lang/String;

.field public static final ARG_VALUES:Ljava/lang/String;

.field public static final RET_SELECTED_IDX:Ljava/lang/String;

.field public static final RET_SELECTED_TITLE:Ljava/lang/String;

.field public static final RET_SELECTED_USER_INPUT:Ljava/lang/String;

.field public static final RET_SELECTED_VAL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFwdIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-class v0, Lcom/waze/ifs/ui/OmniSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_TITLE:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.subtitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_SUBTITLE:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.hint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_EDIT_BOX_HINT:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_VALUES:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.indexed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_INDEXED:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_SEARCH:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_FILTER:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.multi_select"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_MULTI_SELECT:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.user_input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_USER_INPUT:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.user_input_format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_USER_INPUT_FORMAT:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.expandable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_EXPANDABLE:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.fwd_intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_FWD_INTENT:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ret.selected_val"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_VAL:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ret.selected_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_TITLE:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ret.selected_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_IDX:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ret.selected_user_input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_USER_INPUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method public static testExpandableArray(Lcom/waze/ifs/ui/ActivityBase;)Landroid/content/Intent;
    .locals 3
    .parameter "a"

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/ifs/ui/OmniSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_TITLE:Ljava/lang/String;

    const-string v2, "testFilteredArray"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_VALUES:Ljava/lang/String;

    invoke-static {}, Lcom/waze/ifs/ui/OmniSelectionActivity;->testValues2()[Lcom/waze/settings/SettingsValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_EXPANDABLE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    return-object v0
.end method

.method public static testFilteredArray(Lcom/waze/ifs/ui/ActivityBase;)Landroid/content/Intent;
    .locals 4
    .parameter "a"

    .prologue
    const/4 v3, 0x1

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/ifs/ui/OmniSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_TITLE:Ljava/lang/String;

    const-string v2, "testFilteredArray"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_VALUES:Ljava/lang/String;

    invoke-static {}, Lcom/waze/ifs/ui/OmniSelectionActivity;->testValues1()[Lcom/waze/settings/SettingsValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_FILTER:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_USER_INPUT:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_USER_INPUT_FORMAT:Ljava/lang/String;

    const-string v2, "*Add \"%s\""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method public static testValues1()[Lcom/waze/settings/SettingsValue;
    .locals 14

    .prologue
    .line 95
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 96
    .local v7, r:Ljava/util/Random;
    const/16 v10, 0x64

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v3, v10, 0x32

    .line 97
    .local v3, length:I
    const/16 v5, 0xa

    .line 98
    .local v5, letterRange:I
    new-array v8, v3, [Lcom/waze/settings/SettingsValue;

    .line 99
    .local v8, ret:[Lcom/waze/settings/SettingsValue;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 116
    return-object v8

    .line 100
    :cond_0
    new-instance v10, Lcom/waze/settings/SettingsValue;

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v10, v8, v0

    .line 101
    aget-object v10, v8, v0

    const-string v11, ""

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 102
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 103
    .local v9, words:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v9, :cond_1

    .line 113
    aget-object v10, v8, v0

    aget-object v11, v8, v0

    iget-object v11, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    .line 114
    aget-object v10, v8, v0

    aget-object v11, v8, v0

    iget-object v11, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    iput-object v11, v10, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v10, 0x6

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v6, v10, 0x3

    .line 105
    .local v6, letters:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2
    if-lt v2, v6, :cond_3

    .line 109
    add-int/lit8 v10, v9, -0x1

    if-ge v1, v10, :cond_2

    .line 110
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

    .line 103
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v7, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    if-nez v2, :cond_4

    const/16 v10, 0x41

    :goto_3
    add-int/2addr v10, v11

    int-to-char v4, v10

    .line 107
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

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    .end local v4           #letter:C
    :cond_4
    const/16 v10, 0x61

    goto :goto_3
.end method

.method public static testValues2()[Lcom/waze/settings/SettingsValue;
    .locals 16

    .prologue
    const/4 v15, 0x6

    .line 131
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 132
    .local v8, r:Ljava/util/Random;
    const/16 v11, 0x32

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v3, v11, 0xa

    .line 133
    .local v3, length:I
    const/4 v7, 0x0

    .line 134
    .local v7, nextHeader:I
    const/16 v5, 0x19

    .line 135
    .local v5, letterRange:I
    new-array v9, v3, [Lcom/waze/settings/SettingsValue;

    .line 136
    .local v9, ret:[Lcom/waze/settings/SettingsValue;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 158
    return-object v9

    .line 137
    :cond_0
    new-instance v11, Lcom/waze/settings/SettingsValue;

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v11, v9, v0

    .line 138
    aget-object v11, v9, v0

    const-string v12, ""

    iput-object v12, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 139
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v10, v11, 0x1

    .line 140
    .local v10, words:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v10, :cond_1

    .line 150
    aget-object v11, v9, v0

    aget-object v12, v9, v0

    iget-object v12, v12, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    iput-object v12, v11, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    .line 151
    if-nez v7, :cond_5

    .line 152
    aget-object v11, v9, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/waze/settings/SettingsValue;->isHeader:Z

    .line 153
    invoke-virtual {v8, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    .line 136
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v8, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v6, v11, 0x3

    .line 142
    .local v6, letters:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_3
    if-lt v2, v6, :cond_3

    .line 146
    add-int/lit8 v11, v10, -0x1

    if-ge v1, v11, :cond_2

    .line 147
    aget-object v11, v9, v0

    iget-object v12, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x20

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v8, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    if-nez v2, :cond_4

    const/16 v11, 0x41

    :goto_4
    add-int/2addr v11, v12

    int-to-char v4, v11

    .line 144
    .local v4, letter:C
    aget-object v11, v9, v0

    iget-object v12, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 143
    .end local v4           #letter:C
    :cond_4
    const/16 v11, 0x61

    goto :goto_4

    .line 155
    .end local v2           #k:I
    .end local v6           #letters:I
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2
.end method


# virtual methods
.method public isSearching(I)V
    .locals 0
    .parameter "times"

    .prologue
    .line 170
    return-void
.end method

.method public omniSelected(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "idx"
    .parameter "value"
    .parameter "title"
    .parameter "bUserInput"

    .prologue
    const/4 v2, -0x1

    .line 70
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionActivity;->mFwdIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    const-class v1, Lcom/waze/ifs/ui/OmniSelectionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 78
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_IDX:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_VAL:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    if-eqz p4, :cond_0

    .line 82
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_USER_INPUT:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionActivity;->mFwdIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p0, v2, v0}, Lcom/waze/ifs/ui/OmniSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionActivity;->finish()V

    .line 92
    :goto_1
    return-void

    .line 73
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionActivity;->mFwdIntent:Landroid/content/Intent;

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0, v2}, Lcom/waze/ifs/ui/OmniSelectionActivity;->setResult(I)V

    .line 90
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionActivity;->mFwdIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/waze/ifs/ui/OmniSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v5, 0x7f03005a

    invoke-virtual {p0, v5}, Lcom/waze/ifs/ui/OmniSelectionActivity;->setContentView(I)V

    .line 41
    new-instance v0, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-direct {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;-><init>()V

    .line 43
    .local v0, fragment:Lcom/waze/ifs/ui/OmniSelectionFragment;
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 44
    .local v2, intent:Landroid/content/Intent;
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTitle(Ljava/lang/String;)V

    .line 45
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_EDIT_BOX_HINT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setEditBoxHint(Ljava/lang/String;)V

    .line 47
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_VALUES:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 48
    .local v3, parcelableArray:[Landroid/os/Parcelable;
    array-length v5, v3

    new-array v4, v5, [Lcom/waze/settings/SettingsValue;

    .line 49
    .local v4, values:[Lcom/waze/settings/SettingsValue;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_0

    .line 52
    invoke-virtual {v0, v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 53
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_INDEXED:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setIndexed(Z)V

    .line 54
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_SEARCH:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setSearch(Z)V

    .line 55
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_FILTER:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setFilter(Z)V

    .line 56
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_MULTI_SELECT:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setMultiSelect(Z)V

    .line 57
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_USER_INPUT:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 58
    sget-object v6, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_USER_INPUT_FORMAT:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {v0, v5, v6}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setUserInput(ZLjava/lang/String;)V

    .line 59
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_EXPANDABLE:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setExpandable(Z)V

    .line 61
    sget-object v5, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_FWD_INTENT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lcom/waze/ifs/ui/OmniSelectionActivity;->mFwdIntent:Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0902cc

    invoke-virtual {v5, v6, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 64
    return-void

    .line 50
    :cond_0
    aget-object v5, v3, v1

    check-cast v5, Lcom/waze/settings/SettingsValue;

    aput-object v5, v4, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

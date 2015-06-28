.class Lcom/waze/settings/SettingsGeneralActivity$1;
.super Ljava/lang/Object;
.source "SettingsGeneralActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsGeneralActivity;->updateConfigItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsGeneralActivity;

.field private final synthetic val$radiuses:[I

.field private final synthetic val$unitStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsGeneralActivity;[ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->val$radiuses:[I

    iput-object p3, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->val$unitStr:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsGeneralActivity$1;)Lcom/waze/settings/SettingsGeneralActivity;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 92
    iget-object v3, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->val$radiuses:[I

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 93
    .local v0, displayOptions:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 94
    .local v1, i:I
    iget-object v4, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->val$radiuses:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 106
    iget-object v3, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->this$0:Lcom/waze/settings/SettingsGeneralActivity;

    const v6, 0x7f07008a

    invoke-virtual {v5, v6}, Lcom/waze/settings/SettingsGeneralActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    new-instance v5, Lcom/waze/settings/SettingsGeneralActivity$1$1;

    iget-object v6, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->val$radiuses:[I

    invoke-direct {v5, p0, v0, v6}, Lcom/waze/settings/SettingsGeneralActivity$1$1;-><init>(Lcom/waze/settings/SettingsGeneralActivity$1;[Ljava/lang/String;[I)V

    .line 106
    invoke-static {v3, v4, v0, v5}, Lcom/waze/settings/SettingsUtils;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 116
    return-void

    .line 94
    :cond_0
    aget v2, v4, v3

    .line 95
    .local v2, option:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 97
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    .line 98
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_ALL:Lcom/waze/strings/DisplayStrings;

    .line 97
    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 96
    aput-object v6, v0, v1

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v6, -0x2

    if-ne v2, v6, :cond_2

    .line 100
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_ON_ROUTE_ONLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    goto :goto_1

    .line 102
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/waze/settings/SettingsGeneralActivity;->access$0()[I

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/settings/SettingsGeneralActivity$1;->val$unitStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    goto :goto_1
.end method

.class Lcom/waze/install/InstallNativeManager$4;
.super Lcom/waze/ifs/async/RunnableCallback;
.source "InstallNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNativeManager;->openSelectLangMenu([Lcom/waze/install/Lang;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$langs:[Lcom/waze/install/Lang;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;[Lcom/waze/install/Lang;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/waze/install/InstallNativeManager$4;->val$langs:[Lcom/waze/install/Lang;

    .line 115
    invoke-direct {p0, p1}, Lcom/waze/ifs/async/RunnableCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 150
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openSelectLangMenu callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public event()V
    .locals 11

    .prologue
    .line 118
    const-string v6, "WAZE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "openSelectLangMenu event running in thread "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 120
    .local v4, lang2:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, lang:Ljava/lang/String;
    const-string v6, "Hebrew"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    const-string v3, "\u25ca\u00a2\u25ca\u00eb\u25ca\u00ae\u25ca\u00f4\u25ca\u2122"

    .line 124
    :cond_0
    const-string v6, "WAZE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Device lang is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    if-ne v6, v7, :cond_1

    .line 127
    const-string v3, "\u2030\u220f\u2260\u00ca\u00f1\u00e1"

    .line 129
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    const-string v3, "English-UK"

    .line 133
    :cond_2
    iget-object v7, p0, Lcom/waze/install/InstallNativeManager$4;->val$langs:[Lcom/waze/install/Lang;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v8, :cond_3

    .line 141
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 142
    .local v0, currentActivity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/waze/install/SelectLangActivity;

    invoke-direct {v1, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "LANGS"

    iget-object v7, p0, Lcom/waze/install/InstallNativeManager$4;->val$langs:[Lcom/waze/install/Lang;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    .end local v0           #currentActivity:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 133
    :cond_3
    aget-object v2, v7, v6

    .line 134
    .local v2, l:Lcom/waze/install/Lang;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/waze/install/Lang;->getLable()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 135
    new-instance v5, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v5}, Lcom/waze/install/InstallNativeManager;-><init>()V

    .line 136
    .local v5, nm:Lcom/waze/install/InstallNativeManager;
    invoke-virtual {v2}, Lcom/waze/install/Lang;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/waze/install/InstallNativeManager;->langSelected(I)V

    goto :goto_1

    .line 133
    .end local v5           #nm:Lcom/waze/install/InstallNativeManager;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

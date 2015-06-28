.class public final Lcom/waze/install/SelectLangActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SelectLangActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/install/SelectLangActivity$LangListAdapter;
    }
.end annotation


# static fields
.field protected static final LANGS:Ljava/lang/String; = "LANGS"


# instance fields
.field private nativeManager:Lcom/waze/NativeManager;

.field private nm:Lcom/waze/install/InstallNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public langClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 58
    const-string v0, "WAZE"

    const-string v1, "lang pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/waze/install/SelectLangActivity;->nm:Lcom/waze/install/InstallNativeManager;

    const v0, 0x7f09002d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/install/Lang;

    invoke-virtual {v0}, Lcom/waze/install/Lang;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/waze/install/InstallNativeManager;->langSelected(I)V

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/install/SelectLangActivity;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Lcom/waze/install/SelectLangActivity;->finish()V

    .line 62
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 121
    if-ne p2, v0, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/waze/install/SelectLangActivity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/waze/install/SelectLangActivity;->finish()V

    .line 126
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0905fe

    .line 33
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/waze/install/SelectLangActivity;->requestWindowFeature(I)Z

    .line 36
    const v3, 0x7f0300e1

    invoke-virtual {p0, v3}, Lcom/waze/install/SelectLangActivity;->setContentView(I)V

    .line 37
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/install/SelectLangActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 38
    const v3, 0x7f090058

    invoke-virtual {p0, v3}, Lcom/waze/install/SelectLangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    iget-object v4, p0, Lcom/waze/install/SelectLangActivity;->nativeManager:Lcom/waze/NativeManager;

    const v5, 0x7f0700e2

    invoke-virtual {p0, v5}, Lcom/waze/install/SelectLangActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {p0, v6}, Lcom/waze/install/SelectLangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v4, Lcom/waze/install/SelectLangActivity$1;

    invoke-direct {v4, p0}, Lcom/waze/install/SelectLangActivity$1;-><init>(Lcom/waze/install/SelectLangActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/waze/install/SelectLangActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "LANGS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 49
    .local v2, o:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/waze/install/Lang;->getLangArray([Ljava/lang/Object;)[Lcom/waze/install/Lang;

    move-result-object v1

    .line 51
    .local v1, langs:[Lcom/waze/install/Lang;
    new-instance v0, Lcom/waze/install/SelectLangActivity$LangListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/waze/install/SelectLangActivity$LangListAdapter;-><init>(Lcom/waze/install/SelectLangActivity;[Lcom/waze/install/Lang;)V

    .line 52
    .local v0, la:Lcom/waze/install/SelectLangActivity$LangListAdapter;
    invoke-virtual {p0, v6}, Lcom/waze/install/SelectLangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    new-instance v3, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v3}, Lcom/waze/install/InstallNativeManager;-><init>()V

    iput-object v3, p0, Lcom/waze/install/SelectLangActivity;->nm:Lcom/waze/install/InstallNativeManager;

    .line 55
    return-void
.end method

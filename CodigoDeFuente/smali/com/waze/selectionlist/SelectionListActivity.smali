.class public Lcom/waze/selectionlist/SelectionListActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SelectionListActivity.java"


# static fields
.field public static final LIST_ITEMS_ID:Ljava/lang/String; = "com.waze.selectionlist.items"

.field public static final LIST_SELECTION_ID:Ljava/lang/String; = "com.waze.selectionlist.selection"

.field public static final LIST_TITLE_ID:Ljava/lang/String; = "com.waze.selectionlist.title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v6, 0x7f030076

    invoke-virtual {p0, v6}, Lcom/waze/selectionlist/SelectionListActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/waze/selectionlist/SelectionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 25
    .local v1, b:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 26
    const-string v6, "WAZE"

    const-string v7, "Selection list cannot instantiate with no data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/waze/selectionlist/SelectionListActivity;->finish()V

    .line 30
    :cond_0
    const-string v6, "com.waze.selectionlist.title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, title:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 33
    const-string v5, ""

    .line 36
    :cond_1
    const-string v6, "com.waze.selectionlist.selection"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "com.waze.selectionlist.selection"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 37
    .local v4, selection:I
    :goto_0
    const-string v6, "com.waze.selectionlist.items"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, items:[Ljava/lang/String;
    const v6, 0x7f090373

    invoke-virtual {p0, v6}, Lcom/waze/selectionlist/SelectionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v6, p0, v5}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/waze/selectionlist/SelectionListAdapter;

    invoke-virtual {p0}, Lcom/waze/selectionlist/SelectionListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 42
    const v7, 0x7f030075

    .line 41
    invoke-direct {v0, v6, v7, v2, v4}, Lcom/waze/selectionlist/SelectionListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 45
    .local v0, adapter:Lcom/waze/selectionlist/SelectionListAdapter;
    const v6, 0x7f090374

    invoke-virtual {p0, v6}, Lcom/waze/selectionlist/SelectionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 46
    .local v3, list:Landroid/widget/ListView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    new-instance v6, Lcom/waze/selectionlist/SelectionListActivity$1;

    invoke-direct {v6, p0, v0}, Lcom/waze/selectionlist/SelectionListActivity$1;-><init>(Lcom/waze/selectionlist/SelectionListActivity;Lcom/waze/selectionlist/SelectionListAdapter;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    return-void

    .line 36
    .end local v0           #adapter:Lcom/waze/selectionlist/SelectionListAdapter;
    .end local v2           #items:[Ljava/lang/String;
    .end local v3           #list:Landroid/widget/ListView;
    .end local v4           #selection:I
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

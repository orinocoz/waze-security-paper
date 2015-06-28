.class public Lcom/waze/navigate/CategoriesActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "CategoriesActivity.java"


# instance fields
.field final CATEGORY_MENU_DEFAULT:Ljava/lang/String;

.field adapter:Lcom/waze/settings/GeneralListAdapter;

.field private categories:[Lcom/waze/main/navigate/Category;

.field mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 24
    const-string v0, "category_menu_default"

    iput-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->CATEGORY_MENU_DEFAULT:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/CategoriesActivity;)[Lcom/waze/main/navigate/Category;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/CategoriesActivity;[Lcom/waze/main/navigate/Category;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 92
    if-ne p2, v0, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/waze/navigate/CategoriesActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/waze/navigate/CategoriesActivity;->finish()V

    .line 97
    :cond_0
    if-nez p2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/waze/main/navigate/Category;->iconName:Ljava/lang/String;

    const-string v1, "category_menu_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/waze/navigate/CategoriesActivity;->refreshCategoriesIcons()V

    .line 105
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0300fa

    invoke-virtual {p0, v0}, Lcom/waze/navigate/CategoriesActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/navigate/CategoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 38
    new-instance v0, Lcom/waze/settings/GeneralListAdapter;

    invoke-direct {v0, p0}, Lcom/waze/settings/GeneralListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->adapter:Lcom/waze/settings/GeneralListAdapter;

    .line 40
    invoke-virtual {p0}, Lcom/waze/navigate/CategoriesActivity;->refreshCategoriesIcons()V

    .line 42
    const v0, 0x7f090674

    invoke-virtual {p0, v0}, Lcom/waze/navigate/CategoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->mListView:Landroid/widget/ListView;

    .line 43
    iget-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/waze/navigate/CategoriesActivity;->adapter:Lcom/waze/settings/GeneralListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v0, p0, Lcom/waze/navigate/CategoriesActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/waze/navigate/CategoriesActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/CategoriesActivity$1;-><init>(Lcom/waze/navigate/CategoriesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method

.method public refreshCategoriesIcons()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 61
    .local v0, nativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/CategoriesActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/CategoriesActivity$2;-><init>(Lcom/waze/navigate/CategoriesActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getCategories(Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;)V

    .line 87
    return-void
.end method

.class Lcom/waze/navigate/CategoriesActivity$2;
.super Ljava/lang/Object;
.source "CategoriesActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/CategoriesActivity;->refreshCategoriesIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/CategoriesActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/CategoriesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCategoriesItemsValues([Lcom/waze/main/navigate/Category;)[Lcom/waze/settings/SettingsValue;
    .locals 7
    .parameter "aCategories"

    .prologue
    .line 71
    iget-object v3, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    #setter for: Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;
    invoke-static {v3, p1}, Lcom/waze/navigate/CategoriesActivity;->access$1(Lcom/waze/navigate/CategoriesActivity;[Lcom/waze/main/navigate/Category;)V

    .line 73
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 74
    .local v1, nativeManager:Lcom/waze/NativeManager;
    iget-object v3, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    #getter for: Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;
    invoke-static {v3}, Lcom/waze/navigate/CategoriesActivity;->access$0(Lcom/waze/navigate/CategoriesActivity;)[Lcom/waze/main/navigate/Category;

    move-result-object v3

    array-length v3, v3

    new-array v2, v3, [Lcom/waze/settings/SettingsValue;

    .line 75
    .local v2, values:[Lcom/waze/settings/SettingsValue;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    #getter for: Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;
    invoke-static {v3}, Lcom/waze/navigate/CategoriesActivity;->access$0(Lcom/waze/navigate/CategoriesActivity;)[Lcom/waze/main/navigate/Category;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 84
    return-object v2

    .line 76
    :cond_0
    new-instance v3, Lcom/waze/settings/SettingsValue;

    .line 77
    iget-object v4, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    #getter for: Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;
    invoke-static {v4}, Lcom/waze/navigate/CategoriesActivity;->access$0(Lcom/waze/navigate/CategoriesActivity;)[Lcom/waze/main/navigate/Category;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/waze/main/navigate/Category;->value:Ljava/lang/String;

    .line 79
    iget-object v5, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    #getter for: Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;
    invoke-static {v5}, Lcom/waze/navigate/CategoriesActivity;->access$0(Lcom/waze/navigate/CategoriesActivity;)[Lcom/waze/main/navigate/Category;

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/waze/main/navigate/Category;->displayString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    aput-object v3, v2, v0

    .line 81
    aget-object v3, v2, v0

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    #getter for: Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;
    invoke-static {v5}, Lcom/waze/navigate/CategoriesActivity;->access$0(Lcom/waze/navigate/CategoriesActivity;)[Lcom/waze/main/navigate/Category;

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/waze/main/navigate/Category;->iconName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 81
    iput-object v4, v3, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onComplete([Lcom/waze/main/navigate/Category;)V
    .locals 2
    .parameter "aCategories"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/waze/navigate/CategoriesActivity$2;->getCategoriesItemsValues([Lcom/waze/main/navigate/Category;)[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    .line 66
    .local v0, values:[Lcom/waze/settings/SettingsValue;
    iget-object v1, p0, Lcom/waze/navigate/CategoriesActivity$2;->this$0:Lcom/waze/navigate/CategoriesActivity;

    iget-object v1, v1, Lcom/waze/navigate/CategoriesActivity;->adapter:Lcom/waze/settings/GeneralListAdapter;

    invoke-virtual {v1, v0}, Lcom/waze/settings/GeneralListAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 67
    return-void
.end method

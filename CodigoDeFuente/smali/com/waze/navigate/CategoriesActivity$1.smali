.class Lcom/waze/navigate/CategoriesActivity$1;
.super Ljava/lang/Object;
.source "CategoriesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/CategoriesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/CategoriesActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/CategoriesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/CategoriesActivity$1;->this$0:Lcom/waze/navigate/CategoriesActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/CategoriesActivity$1;->this$0:Lcom/waze/navigate/CategoriesActivity;

    .line 49
    const-class v2, Lcom/waze/navigate/SearchActivity;

    .line 48
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SearchCategory"

    .line 51
    iget-object v2, p0, Lcom/waze/navigate/CategoriesActivity$1;->this$0:Lcom/waze/navigate/CategoriesActivity;

    #getter for: Lcom/waze/navigate/CategoriesActivity;->categories:[Lcom/waze/main/navigate/Category;
    invoke-static {v2}, Lcom/waze/navigate/CategoriesActivity;->access$0(Lcom/waze/navigate/CategoriesActivity;)[Lcom/waze/main/navigate/Category;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v2, v2, Lcom/waze/main/navigate/Category;->value:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "SearchMode"

    .line 53
    const/4 v2, 0x2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/waze/navigate/CategoriesActivity$1;->this$0:Lcom/waze/navigate/CategoriesActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/CategoriesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    return-void
.end method

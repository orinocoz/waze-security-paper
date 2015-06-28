.class Lcom/waze/main/navigate/NavigationListActivity$1;
.super Ljava/lang/Object;
.source "NavigationListActivity.java"

# interfaces
.implements Lcom/waze/NavBarManager$NavigationListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationListActivity;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationListActivity$1;->this$0:Lcom/waze/main/navigate/NavigationListActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/main/navigate/NavigationItem;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationListActivity$1;->this$0:Lcom/waze/main/navigate/NavigationListActivity;

    #getter for: Lcom/waze/main/navigate/NavigationListActivity;->adapter:Lcom/waze/main/navigate/NavigationListItemAdapter;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationListActivity;->access$0(Lcom/waze/main/navigate/NavigationListActivity;)Lcom/waze/main/navigate/NavigationListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/main/navigate/NavigationListItemAdapter;->setItems([Lcom/waze/main/navigate/NavigationItem;)V

    .line 36
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationListActivity$1;->this$0:Lcom/waze/main/navigate/NavigationListActivity;

    #getter for: Lcom/waze/main/navigate/NavigationListActivity;->list:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationListActivity;->access$1(Lcom/waze/main/navigate/NavigationListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 37
    return-void
.end method

.class Lcom/waze/NavBarManager$2;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "NavBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->getNavigationItems(Lcom/waze/NavBarManager$NavigationListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private items:[Lcom/waze/main/navigate/NavigationItem;

.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$listener:Lcom/waze/NavBarManager$NavigationListListener;


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;Lcom/waze/NavBarManager$NavigationListListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$2;->this$0:Lcom/waze/NavBarManager;

    iput-object p2, p0, Lcom/waze/NavBarManager$2;->val$listener:Lcom/waze/NavBarManager$NavigationListListener;

    .line 28
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/NavBarManager$2;->val$listener:Lcom/waze/NavBarManager$NavigationListListener;

    iget-object v1, p0, Lcom/waze/NavBarManager$2;->items:[Lcom/waze/main/navigate/NavigationItem;

    invoke-interface {v0, v1}, Lcom/waze/NavBarManager$NavigationListListener;->onComplete([Lcom/waze/main/navigate/NavigationItem;)V

    .line 42
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/waze/NavBarManager$2;->this$0:Lcom/waze/NavBarManager;

    #calls: Lcom/waze/NavBarManager;->getNavigationItemsNTV()[Lcom/waze/main/navigate/NavigationItem;
    invoke-static {v1}, Lcom/waze/NavBarManager;->access$1(Lcom/waze/NavBarManager;)[Lcom/waze/main/navigate/NavigationItem;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/NavBarManager$2;->items:[Lcom/waze/main/navigate/NavigationItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/NavBarManager$2;->items:[Lcom/waze/main/navigate/NavigationItem;

    goto :goto_0
.end method

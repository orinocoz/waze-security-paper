.class Lcom/waze/navigate/DriveToNativeManager$59;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getSearchEngines(Ljava/lang/String;Lcom/waze/navigate/DriveToGetSearchEnginesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enginesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/waze/navigate/SearchEngine;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$callback:Lcom/waze/navigate/DriveToGetSearchEnginesCallback;

.field private final synthetic val$category:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToGetSearchEnginesCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$59;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$59;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$59;->val$callback:Lcom/waze/navigate/DriveToGetSearchEnginesCallback;

    .line 1559
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 1560
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$59;->enginesList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 1574
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSearchEngines callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1575
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1574
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$59;->val$callback:Lcom/waze/navigate/DriveToGetSearchEnginesCallback;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$59;->enginesList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToGetSearchEnginesCallback;->getSearchEnginesCallback(Ljava/util/List;)V

    .line 1578
    return-void
.end method

.method public event()V
    .locals 6

    .prologue
    .line 1564
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSearchEngines event running in thread "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1565
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1564
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$59;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$59;->val$category:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getSearchEnginesNTV(Ljava/lang/String;)[Lcom/waze/navigate/SearchEngine;
    invoke-static {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->access$52(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)[Lcom/waze/navigate/SearchEngine;

    move-result-object v0

    .line 1567
    .local v0, engines:[Lcom/waze/navigate/SearchEngine;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 1570
    return-void

    .line 1568
    :cond_0
    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$59;->enginesList:Ljava/util/List;

    rem-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/waze/navigate/DriveToNativeManager$59;->enginesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

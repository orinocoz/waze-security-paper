.class Lcom/waze/navigate/DriveToNativeManager$12;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getCategories(Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private categories:[Lcom/waze/main/navigate/Category;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$12;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$12;->val$listener:Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;

    .line 554
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$12;->val$listener:Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$12;->categories:[Lcom/waze/main/navigate/Category;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;->onComplete([Lcom/waze/main/navigate/Category;)V

    .line 569
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$12;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getCategoriesNTV()[Lcom/waze/main/navigate/Category;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$11(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/main/navigate/Category;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$12;->categories:[Lcom/waze/main/navigate/Category;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$12;->categories:[Lcom/waze/main/navigate/Category;

    goto :goto_0
.end method

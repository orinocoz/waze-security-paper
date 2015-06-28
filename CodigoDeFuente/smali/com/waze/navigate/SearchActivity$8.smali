.class Lcom/waze/navigate/SearchActivity$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchActivity;->downloadResCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$8;->this$0:Lcom/waze/navigate/SearchActivity;

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1130
    const-string v0, "WAZE"

    const-string v1, "in downloadResCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$8;->this$0:Lcom/waze/navigate/SearchActivity;

    #getter for: Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;
    invoke-static {v0}, Lcom/waze/navigate/SearchActivity;->access$6(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->notifyDataSetChanged()V

    .line 1132
    return-void
.end method

.class Lcom/waze/navigate/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchActivity;->iterateAllEnginesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchActivity;

.field private final synthetic val$finalActiveEngine:Lcom/waze/navigate/SearchEngine;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchActivity;Lcom/waze/navigate/SearchEngine;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$6;->this$0:Lcom/waze/navigate/SearchActivity;

    iput-object p2, p0, Lcom/waze/navigate/SearchActivity$6;->val$finalActiveEngine:Lcom/waze/navigate/SearchEngine;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$6;->this$0:Lcom/waze/navigate/SearchActivity;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity$6;->val$finalActiveEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V

    .line 938
    return-void
.end method

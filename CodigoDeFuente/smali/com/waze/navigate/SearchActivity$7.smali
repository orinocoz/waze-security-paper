.class Lcom/waze/navigate/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchActivity;->chooseActiveEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchActivity;

.field private final synthetic val$finalEngine:Lcom/waze/navigate/SearchEngine;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchActivity;Lcom/waze/navigate/SearchEngine;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$7;->this$0:Lcom/waze/navigate/SearchActivity;

    iput-object p2, p0, Lcom/waze/navigate/SearchActivity$7;->val$finalEngine:Lcom/waze/navigate/SearchEngine;

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$7;->this$0:Lcom/waze/navigate/SearchActivity;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity$7;->val$finalEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V

    .line 1050
    return-void
.end method

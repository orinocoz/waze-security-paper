.class Lcom/waze/navigate/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchActivity;->refreshList()V
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
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$5;->this$0:Lcom/waze/navigate/SearchActivity;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$5;->this$0:Lcom/waze/navigate/SearchActivity;

    const v1, 0x7f0905e5

    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 792
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 793
    return-void
.end method

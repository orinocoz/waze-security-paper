.class Lcom/waze/LayoutManager$10;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$10;->this$0:Lcom/waze/LayoutManager;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/waze/LayoutManager$10;->this$0:Lcom/waze/LayoutManager;

    #calls: Lcom/waze/LayoutManager;->openDelayedReportMenu()V
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$7(Lcom/waze/LayoutManager;)V

    .line 608
    return-void
.end method

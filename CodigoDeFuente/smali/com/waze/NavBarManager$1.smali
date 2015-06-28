.class Lcom/waze/NavBarManager$1;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->showNavigationResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$1;->this$0:Lcom/waze/NavBarManager;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/waze/NavBarManager$1;->this$0:Lcom/waze/NavBarManager;

    #calls: Lcom/waze/NavBarManager;->showNavigationResultNTV()V
    invoke-static {v0}, Lcom/waze/NavBarManager;->access$0(Lcom/waze/NavBarManager;)V

    .line 22
    return-void
.end method

.class Lcom/waze/NavBarManager$13;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->set_distance(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$dist:Ljava/lang/String;

.field private final synthetic val$unit:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$13;->this$0:Lcom/waze/NavBarManager;

    iput-object p2, p0, Lcom/waze/NavBarManager$13;->val$dist:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NavBarManager$13;->val$unit:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NavBarManager$13;->val$dist:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NavBarManager$13;->val$unit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navbar/NavBar;->setDistance(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

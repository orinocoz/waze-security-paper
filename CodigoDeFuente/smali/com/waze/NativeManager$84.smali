.class Lcom/waze/NativeManager$84;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->updatePricesDone(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$84;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$84;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$84;->val$text:Ljava/lang/String;

    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1780
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 1781
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    instance-of v1, v0, Lcom/waze/reports/UpdatePriceActivity;

    if-eqz v1, :cond_0

    .line 1782
    check-cast v0, Lcom/waze/reports/UpdatePriceActivity;

    .end local v0           #activity:Lcom/waze/ifs/ui/ActivityBase;
    iget-object v1, p0, Lcom/waze/NativeManager$84;->val$title:Ljava/lang/String;

    .line 1783
    iget-object v2, p0, Lcom/waze/NativeManager$84;->val$text:Ljava/lang/String;

    .line 1782
    invoke-virtual {v0, v1, v2}, Lcom/waze/reports/UpdatePriceActivity;->updateActivityDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :cond_0
    return-void
.end method

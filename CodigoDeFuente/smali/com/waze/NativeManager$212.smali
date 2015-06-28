.class Lcom/waze/NativeManager$212;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenClosureFromQuestion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$isClosureEnabled:Z

.field private final synthetic val$isFoursquareEnabled:Z

.field private final synthetic val$isRandomUser:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$212;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$212;->val$isRandomUser:Z

    iput-boolean p3, p0, Lcom/waze/NativeManager$212;->val$isFoursquareEnabled:Z

    iput-boolean p4, p0, Lcom/waze/NativeManager$212;->val$isClosureEnabled:Z

    .line 5879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5882
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5884
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/NativeManager$212;->val$isRandomUser:Z

    iget-boolean v2, p0, Lcom/waze/NativeManager$212;->val$isFoursquareEnabled:Z

    iget-boolean v3, p0, Lcom/waze/NativeManager$212;->val$isClosureEnabled:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/LayoutManager;->OpenClosure(ZZZZ)V

    .line 5886
    :cond_0
    return-void
.end method

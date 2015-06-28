.class Lcom/waze/NativeManager$191;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->mapProblemsPave()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$191;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$191;->val$isRandomUser:Z

    iput-boolean p3, p0, Lcom/waze/NativeManager$191;->val$isFoursquareEnabled:Z

    iput-boolean p4, p0, Lcom/waze/NativeManager$191;->val$isClosureEnabled:Z

    .line 5597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5600
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 5601
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_0

    .line 5602
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 5603
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 5604
    iget-boolean v2, p0, Lcom/waze/NativeManager$191;->val$isRandomUser:Z

    iget-boolean v3, p0, Lcom/waze/NativeManager$191;->val$isFoursquareEnabled:Z

    iget-boolean v4, p0, Lcom/waze/NativeManager$191;->val$isClosureEnabled:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/waze/LayoutManager;->OpenPave(ZZZ)V

    .line 5607
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    return-void
.end method

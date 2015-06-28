.class Lcom/waze/NativeManager$151;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenReportMenu()V
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

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$151;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$151;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-boolean p3, p0, Lcom/waze/NativeManager$151;->val$isRandomUser:Z

    iput-boolean p4, p0, Lcom/waze/NativeManager$151;->val$isFoursquareEnabled:Z

    iput-boolean p5, p0, Lcom/waze/NativeManager$151;->val$isClosureEnabled:Z

    .line 3083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/waze/NativeManager$151;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-boolean v1, p0, Lcom/waze/NativeManager$151;->val$isRandomUser:Z

    iget-boolean v2, p0, Lcom/waze/NativeManager$151;->val$isFoursquareEnabled:Z

    iget-boolean v3, p0, Lcom/waze/NativeManager$151;->val$isClosureEnabled:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/LayoutManager;->openReportMenu(ZZZ)V

    .line 3086
    return-void
.end method

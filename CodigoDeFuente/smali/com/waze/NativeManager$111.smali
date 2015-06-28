.class Lcom/waze/NativeManager$111;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->UpdateAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$distanceStr:Ljava/lang/String;

.field private final synthetic val$iconName:Ljava/lang/String;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$titleStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$111;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$111;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-object p3, p0, Lcom/waze/NativeManager$111;->val$titleStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$111;->val$iconName:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$111;->val$distanceStr:Ljava/lang/String;

    .line 2433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/waze/NativeManager$111;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/NativeManager$111;->val$titleStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$111;->val$iconName:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$111;->val$distanceStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/LayoutManager;->updateAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    return-void
.end method

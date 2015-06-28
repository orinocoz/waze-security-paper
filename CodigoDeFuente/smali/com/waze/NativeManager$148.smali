.class Lcom/waze/NativeManager$148;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowMessageTicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$icon:Ljava/lang/String;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$timeout:I

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$148;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$148;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-object p3, p0, Lcom/waze/NativeManager$148;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$148;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$148;->val$icon:Ljava/lang/String;

    iput p6, p0, Lcom/waze/NativeManager$148;->val$timeout:I

    .line 3018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/waze/NativeManager$148;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/NativeManager$148;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$148;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$148;->val$icon:Ljava/lang/String;

    iget v4, p0, Lcom/waze/NativeManager$148;->val$timeout:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/LayoutManager;->showMessageTicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3021
    return-void
.end method

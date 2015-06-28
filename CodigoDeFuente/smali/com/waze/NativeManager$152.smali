.class Lcom/waze/NativeManager$152;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowSoftKeyboard(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$view:Lcom/waze/MapView;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/MapView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$152;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$152;->val$view:Lcom/waze/MapView;

    .line 3201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/waze/NativeManager$152;->val$view:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->ShowSoftInput()V

    .line 3204
    return-void
.end method

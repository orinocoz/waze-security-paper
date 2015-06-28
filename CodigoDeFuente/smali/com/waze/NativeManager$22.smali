.class Lcom/waze/NativeManager$22;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenTickersPopups([I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$nIndex:[I

.field private final synthetic val$nType:[I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;[I[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$22;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$22;->val$nType:[I

    iput-object p3, p0, Lcom/waze/NativeManager$22;->val$nIndex:[I

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/waze/NativeManager$22;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$22;->val$nType:[I

    iget-object v2, p0, Lcom/waze/NativeManager$22;->val$nIndex:[I

    #calls: Lcom/waze/NativeManager;->AddPopupNTV([I[I)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->access$40(Lcom/waze/NativeManager;[I[I)V

    .line 533
    return-void
.end method

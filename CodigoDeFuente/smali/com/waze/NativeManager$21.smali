.class Lcom/waze/NativeManager$21;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->Set_Parking(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$lat:I

.field private final synthetic val$lon:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$21;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$21;->val$lon:I

    iput p3, p0, Lcom/waze/NativeManager$21;->val$lat:I

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/waze/NativeManager$21;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$21;->val$lon:I

    iget v2, p0, Lcom/waze/NativeManager$21;->val$lat:I

    #calls: Lcom/waze/NativeManager;->SetparkedNTV(II)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->access$39(Lcom/waze/NativeManager;II)V

    .line 524
    return-void
.end method

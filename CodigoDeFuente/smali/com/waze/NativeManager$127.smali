.class Lcom/waze/NativeManager$127;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->setLimitCenter(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$bAvoiderPin:Z

.field private final synthetic val$lat:I

.field private final synthetic val$lon:I

.field private final synthetic val$radius:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$127;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$127;->val$lon:I

    iput p3, p0, Lcom/waze/NativeManager$127;->val$lat:I

    iput p4, p0, Lcom/waze/NativeManager$127;->val$radius:I

    iput-boolean p5, p0, Lcom/waze/NativeManager$127;->val$bAvoiderPin:Z

    .line 2691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/waze/NativeManager$127;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$127;->val$lon:I

    iget v2, p0, Lcom/waze/NativeManager$127;->val$lat:I

    iget v3, p0, Lcom/waze/NativeManager$127;->val$radius:I

    iget-boolean v4, p0, Lcom/waze/NativeManager$127;->val$bAvoiderPin:Z

    #calls: Lcom/waze/NativeManager;->SetLimitCenterNTV(IIIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$77(Lcom/waze/NativeManager;IIIZ)V

    .line 2695
    return-void
.end method

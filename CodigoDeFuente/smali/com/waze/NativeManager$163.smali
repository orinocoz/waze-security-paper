.class Lcom/waze/NativeManager$163;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SetBackLightOn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$aAlwaysOn:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$163;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$163;->val$aAlwaysOn:I

    .line 4061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4063
    iget v1, p0, Lcom/waze/NativeManager$163;->val$aAlwaysOn:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/waze/ifs/ui/ActivityBase;->setScreenBacklightOn(Z)V

    .line 4064
    return-void

    .line 4063
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/waze/NativeManager$169;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Lcom/waze/NativeManager$GasSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->InitNativeManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$169;->this$0:Lcom/waze/NativeManager;

    .line 4433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1
    .parameter "shouldDisplayGasSettings"

    .prologue
    .line 4436
    iget-object v0, p0, Lcom/waze/NativeManager$169;->this$0:Lcom/waze/NativeManager;

    iput-boolean p1, v0, Lcom/waze/NativeManager;->shouldDisplayGasSettings:Z

    .line 4437
    return-void
.end method

.class Lcom/waze/NativeManager$38;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SetShowGasPricePopupAgain(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$bToShow:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$38;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$38;->val$bToShow:Z

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/waze/NativeManager$38;->this$0:Lcom/waze/NativeManager;

    iget-boolean v1, p0, Lcom/waze/NativeManager$38;->val$bToShow:Z

    #calls: Lcom/waze/NativeManager;->SetNeverShowGasPopAgainNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$55(Lcom/waze/NativeManager;Z)V

    .line 695
    return-void
.end method

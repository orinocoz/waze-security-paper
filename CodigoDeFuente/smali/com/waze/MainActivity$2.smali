.class Lcom/waze/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MainActivity;->onUserNameResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MainActivity;


# direct methods
.method constructor <init>(Lcom/waze/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MainActivity$2;->this$0:Lcom/waze/MainActivity;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 470
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/MainActivity$2;->this$0:Lcom/waze/MainActivity;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->unregisterOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V

    .line 471
    return-void
.end method

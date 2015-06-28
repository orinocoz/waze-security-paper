.class Lcom/waze/samples/JniSampleActivity$1;
.super Ljava/lang/Object;
.source "JniSampleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/samples/JniSampleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/samples/JniSampleActivity;


# direct methods
.method constructor <init>(Lcom/waze/samples/JniSampleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/samples/JniSampleActivity$1;->this$0:Lcom/waze/samples/JniSampleActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 40
    invoke-static {}, Lcom/waze/samples/JniSampleActivity;->access$0()Lcom/waze/samples/JniSampleActivityNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/samples/JniSampleActivity$1;->this$0:Lcom/waze/samples/JniSampleActivity;

    invoke-virtual {v0, v1}, Lcom/waze/samples/JniSampleActivityNativeManager;->runButtonClick(Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;)V

    .line 41
    return-void
.end method

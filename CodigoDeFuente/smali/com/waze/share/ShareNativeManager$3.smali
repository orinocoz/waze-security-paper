.class Lcom/waze/share/ShareNativeManager$3;
.super Ljava/lang/Object;
.source "ShareNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareNativeManager;->shareFbDialogShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareNativeManager$3;->this$0:Lcom/waze/share/ShareNativeManager;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 115
    .local v0, context:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Lcom/waze/share/ShareFbQueries;->postDialogShow(Landroid/app/Activity;)V

    .line 119
    :cond_0
    return-void
.end method

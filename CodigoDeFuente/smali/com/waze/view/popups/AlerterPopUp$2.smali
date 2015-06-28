.class Lcom/waze/view/popups/AlerterPopUp$2;
.super Ljava/lang/Object;
.source "AlerterPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlerterPopUp;->onThumbsUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/AlerterPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/AlerterPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/AlerterPopUp$2;->this$0:Lcom/waze/view/popups/AlerterPopUp;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->AlerterThumbsUpNTV()V

    .line 145
    return-void
.end method

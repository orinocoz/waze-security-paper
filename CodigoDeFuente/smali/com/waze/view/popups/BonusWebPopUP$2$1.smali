.class Lcom/waze/view/popups/BonusWebPopUP$2$1;
.super Ljava/lang/Object;
.source "BonusWebPopUP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/BonusWebPopUP$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/popups/BonusWebPopUP$2;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/BonusWebPopUP$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/BonusWebPopUP$2$1;->this$1:Lcom/waze/view/popups/BonusWebPopUP$2;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/view/popups/BonusWebPopUP;->access$2()I

    move-result v1

    invoke-static {}, Lcom/waze/view/popups/BonusWebPopUP;->access$3()I

    move-result v2

    invoke-static {}, Lcom/waze/view/popups/BonusWebPopUP;->access$4()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->navigateToBonusPointNTV(III)V

    .line 96
    return-void
.end method

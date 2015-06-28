.class Lcom/waze/view/popups/BonusWebPopUP$2;
.super Ljava/lang/Object;
.source "BonusWebPopUP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/BonusWebPopUP;->show(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/BonusWebPopUP;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/BonusWebPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/BonusWebPopUP$2;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$2;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    invoke-virtual {v0}, Lcom/waze/view/popups/BonusWebPopUP;->hide()V

    .line 90
    new-instance v0, Lcom/waze/view/popups/BonusWebPopUP$2$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/BonusWebPopUP$2$1;-><init>(Lcom/waze/view/popups/BonusWebPopUP$2;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

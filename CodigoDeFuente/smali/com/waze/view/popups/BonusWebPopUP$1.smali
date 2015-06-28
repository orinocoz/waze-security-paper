.class Lcom/waze/view/popups/BonusWebPopUP$1;
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
    iput-object p1, p0, Lcom/waze/view/popups/BonusWebPopUP$1;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$1;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    invoke-virtual {v0}, Lcom/waze/view/popups/BonusWebPopUP;->hide()V

    .line 84
    return-void
.end method

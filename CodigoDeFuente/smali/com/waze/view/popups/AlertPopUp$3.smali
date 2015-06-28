.class Lcom/waze/view/popups/AlertPopUp$3;
.super Ljava/lang/Object;
.source "AlertPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlertPopUp;->setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/AlertPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/AlertPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp$3;->this$0:Lcom/waze/view/popups/AlertPopUp;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp$3;->this$0:Lcom/waze/view/popups/AlertPopUp;

    invoke-virtual {v0}, Lcom/waze/view/popups/AlertPopUp;->onImagePresses()V

    .line 217
    return-void
.end method

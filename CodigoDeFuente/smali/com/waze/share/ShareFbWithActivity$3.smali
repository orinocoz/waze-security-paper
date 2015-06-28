.class Lcom/waze/share/ShareFbWithActivity$3;
.super Ljava/lang/Object;
.source "ShareFbWithActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbWithActivity;->onFbWithData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbWithActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbWithActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbWithActivity$3;->this$0:Lcom/waze/share/ShareFbWithActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity$3;->this$0:Lcom/waze/share/ShareFbWithActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/waze/share/ShareFbWithActivity;->setResult(I)V

    .line 69
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity$3;->this$0:Lcom/waze/share/ShareFbWithActivity;

    #calls: Lcom/waze/share/ShareFbWithActivity;->_finish()V
    invoke-static {v0}, Lcom/waze/share/ShareFbWithActivity;->access$0(Lcom/waze/share/ShareFbWithActivity;)V

    .line 70
    return-void
.end method

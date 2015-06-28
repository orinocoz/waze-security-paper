.class Lcom/waze/MsgBox$MsgBoxOnClick$1;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox$MsgBoxOnClick;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/MsgBox$MsgBoxOnClick;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox$MsgBoxOnClick;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$MsgBoxOnClick$1;->this$1:Lcom/waze/MsgBox$MsgBoxOnClick;

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 970
    iget-object v0, p0, Lcom/waze/MsgBox$MsgBoxOnClick$1;->this$1:Lcom/waze/MsgBox$MsgBoxOnClick;

    #getter for: Lcom/waze/MsgBox$MsgBoxOnClick;->this$0:Lcom/waze/MsgBox;
    invoke-static {v0}, Lcom/waze/MsgBox$MsgBoxOnClick;->access$2(Lcom/waze/MsgBox$MsgBoxOnClick;)Lcom/waze/MsgBox;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/MsgBox$MsgBoxOnClick$1;->this$1:Lcom/waze/MsgBox$MsgBoxOnClick;

    #getter for: Lcom/waze/MsgBox$MsgBoxOnClick;->mCbRes:I
    invoke-static {v1}, Lcom/waze/MsgBox$MsgBoxOnClick;->access$0(Lcom/waze/MsgBox$MsgBoxOnClick;)I

    move-result v1

    iget-object v2, p0, Lcom/waze/MsgBox$MsgBoxOnClick$1;->this$1:Lcom/waze/MsgBox$MsgBoxOnClick;

    #getter for: Lcom/waze/MsgBox$MsgBoxOnClick;->mCbContext:J
    invoke-static {v2}, Lcom/waze/MsgBox$MsgBoxOnClick;->access$1(Lcom/waze/MsgBox$MsgBoxOnClick;)J

    move-result-wide v2

    #calls: Lcom/waze/MsgBox;->SpecialMsgBoxCallbackNTV(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/MsgBox;->access$0(Lcom/waze/MsgBox;IJ)V

    .line 971
    return-void
.end method

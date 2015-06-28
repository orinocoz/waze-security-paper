.class Lcom/waze/MsgBox$2;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$aCancelCb:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$aLabelCancel:Ljava/lang/String;

.field private final synthetic val$aLabelOk:Ljava/lang/String;

.field private final synthetic val$aMessage:Ljava/lang/String;

.field private final synthetic val$aOkCb:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$aTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$2;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$2;->val$aTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/MsgBox$2;->val$aMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/MsgBox$2;->val$aLabelOk:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/MsgBox$2;->val$aLabelCancel:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/MsgBox$2;->val$aOkCb:Landroid/content/DialogInterface$OnClickListener;

    iput-object p7, p0, Lcom/waze/MsgBox$2;->val$aCancelCb:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 165
    iget-object v0, p0, Lcom/waze/MsgBox$2;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$2;->val$aTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/MsgBox$2;->val$aMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/MsgBox$2;->val$aLabelOk:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/MsgBox$2;->val$aLabelCancel:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/MsgBox$2;->val$aOkCb:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/waze/MsgBox$2;->val$aCancelCb:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual/range {v0 .. v6}, Lcom/waze/MsgBox;->ShowRun(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 166
    return-void
.end method

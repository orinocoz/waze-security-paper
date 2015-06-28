.class Lcom/waze/MsgBox$13;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$defaultYes:Z

.field private final synthetic val$onClick:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$seconds:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$textNo:Ljava/lang/String;

.field private final synthetic val$textYes:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$13;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$13;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/MsgBox$13;->val$text:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/waze/MsgBox$13;->val$defaultYes:Z

    iput-object p5, p0, Lcom/waze/MsgBox$13;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/waze/MsgBox$13;->val$textYes:Ljava/lang/String;

    iput-object p7, p0, Lcom/waze/MsgBox$13;->val$textNo:Ljava/lang/String;

    iput p8, p0, Lcom/waze/MsgBox$13;->val$seconds:I

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 499
    iget-object v0, p0, Lcom/waze/MsgBox$13;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$13;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/MsgBox$13;->val$text:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/waze/MsgBox$13;->val$defaultYes:Z

    iget-object v4, p0, Lcom/waze/MsgBox$13;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/waze/MsgBox$13;->val$textYes:Ljava/lang/String;

    iget-object v6, p0, Lcom/waze/MsgBox$13;->val$textNo:Ljava/lang/String;

    iget v7, p0, Lcom/waze/MsgBox$13;->val$seconds:I

    #calls: Lcom/waze/MsgBox;->openConfirmDialogJavaCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v7}, Lcom/waze/MsgBox;->access$9(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 500
    return-void
.end method

.class Lcom/waze/MsgBox$12;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenChooseNumberDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$FirstNumber:Ljava/lang/String;

.field private final synthetic val$SecondNumber:Ljava/lang/String;

.field private final synthetic val$callback:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$12;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$12;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/MsgBox$12;->val$FirstNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/MsgBox$12;->val$SecondNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/MsgBox$12;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 490
    iget-object v0, p0, Lcom/waze/MsgBox$12;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$12;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/MsgBox$12;->val$FirstNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/MsgBox$12;->val$SecondNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/MsgBox$12;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    #calls: Lcom/waze/MsgBox;->openChooseNumberDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/MsgBox;->access$8(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 491
    return-void
.end method

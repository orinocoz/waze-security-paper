.class Lcom/waze/MainActivity$SDCardWarnClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDCardWarnClickListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/MainActivity$SDCardWarnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/waze/MainActivity$SDCardWarnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 852
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 854
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 855
    .local v0, ctx:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 856
    return-void
.end method

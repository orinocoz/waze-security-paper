.class Lcom/waze/navigate/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$4;->this$0:Lcom/waze/navigate/SearchActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$4;->this$0:Lcom/waze/navigate/SearchActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchActivity;->onBackPressed()V

    .line 217
    return-void
.end method

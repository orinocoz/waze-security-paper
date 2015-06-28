.class Lcom/waze/install/TermsOfUseActivity$1;
.super Landroid/app/backup/RestoreObserver;
.source "TermsOfUseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/TermsOfUseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/TermsOfUseActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/TermsOfUseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/TermsOfUseActivity$1;->this$0:Lcom/waze/install/TermsOfUseActivity;

    .line 43
    invoke-direct {p0}, Landroid/app/backup/RestoreObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreFinished(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/backup/RestoreObserver;->restoreFinished(I)V

    .line 52
    return-void
.end method

.method public restoreStarting(I)V
    .locals 0
    .parameter "numPackages"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/backup/RestoreObserver;->restoreStarting(I)V

    .line 47
    return-void
.end method

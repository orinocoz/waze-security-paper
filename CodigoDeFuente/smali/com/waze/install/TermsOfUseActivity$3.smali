.class Lcom/waze/install/TermsOfUseActivity$3;
.super Ljava/lang/Object;
.source "TermsOfUseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/install/TermsOfUseActivity$3;->this$0:Lcom/waze/install/TermsOfUseActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 87
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 88
    const-string v1, "AGREEMENT_RESPONSE"

    .line 89
    const-string v2, "VAUE"

    const-string v3, "FAILURE"

    .line 90
    const/4 v4, 0x1

    .line 87
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    iget-object v0, p0, Lcom/waze/install/TermsOfUseActivity$3;->this$0:Lcom/waze/install/TermsOfUseActivity;

    #getter for: Lcom/waze/install/TermsOfUseActivity;->nm:Lcom/waze/install/InstallNativeManager;
    invoke-static {v0}, Lcom/waze/install/TermsOfUseActivity;->access$0(Lcom/waze/install/TermsOfUseActivity;)Lcom/waze/install/InstallNativeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/install/InstallNativeManager;->termsOfUseResponse(I)V

    .line 95
    return-void
.end method

.class Lcom/waze/share/UserDetailsActivity$3$1;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/UserDetailsActivity$3;

.field private final synthetic val$bSharingMyDrive:Z


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity$3;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$3$1;->this$1:Lcom/waze/share/UserDetailsActivity$3;

    iput-boolean p2, p0, Lcom/waze/share/UserDetailsActivity$3$1;->val$bSharingMyDrive:Z

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2
    .parameter "okToAccess"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$3$1;->this$1:Lcom/waze/share/UserDetailsActivity$3;

    iget-boolean v1, p0, Lcom/waze/share/UserDetailsActivity$3$1;->val$bSharingMyDrive:Z

    #calls: Lcom/waze/share/UserDetailsActivity$3;->doShare(Z)V
    invoke-static {v0, v1}, Lcom/waze/share/UserDetailsActivity$3;->access$0(Lcom/waze/share/UserDetailsActivity$3;Z)V

    .line 222
    :cond_0
    return-void
.end method

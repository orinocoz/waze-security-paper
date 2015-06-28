.class Lcom/waze/share/UserDetailsActivity$11;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->removeFriend(Lcom/waze/user/PersonBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserDetailsActivity;

.field private final synthetic val$p:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$11;->this$0:Lcom/waze/share/UserDetailsActivity;

    iput-object p2, p0, Lcom/waze/share/UserDetailsActivity$11;->val$p:Lcom/waze/user/PersonBase;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 490
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$11;->this$0:Lcom/waze/share/UserDetailsActivity;

    iget-object v1, p0, Lcom/waze/share/UserDetailsActivity$11;->val$p:Lcom/waze/user/PersonBase;

    #calls: Lcom/waze/share/UserDetailsActivity;->reallyRemoveFriend(Lcom/waze/user/PersonBase;)V
    invoke-static {v0, v1}, Lcom/waze/share/UserDetailsActivity;->access$7(Lcom/waze/share/UserDetailsActivity;Lcom/waze/user/PersonBase;)V

    .line 493
    :cond_0
    return-void
.end method

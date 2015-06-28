.class Lcom/waze/share/ShareFbActivity$5;
.super Ljava/lang/Object;
.source "ShareFbActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbActivity;->onPostResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbActivity$5;->this$0:Lcom/waze/share/ShareFbActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity$5;->this$0:Lcom/waze/share/ShareFbActivity;

    invoke-virtual {v0}, Lcom/waze/share/ShareFbActivity;->finish()V

    .line 172
    return-void
.end method

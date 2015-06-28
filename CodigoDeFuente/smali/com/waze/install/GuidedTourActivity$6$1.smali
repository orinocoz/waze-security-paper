.class Lcom/waze/install/GuidedTourActivity$6$1;
.super Ljava/lang/Object;
.source "GuidedTourActivity.java"

# interfaces
.implements Lcom/waze/install/InstallNativeManager$VideoUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/GuidedTourActivity$6;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/install/GuidedTourActivity$6;

.field private final synthetic val$video:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/waze/install/GuidedTourActivity$6;Landroid/widget/VideoView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$6$1;->this$1:Lcom/waze/install/GuidedTourActivity$6;

    iput-object p2, p0, Lcom/waze/install/GuidedTourActivity$6$1;->val$video:Landroid/widget/VideoView;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 318
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 319
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$6$1;->val$video:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 320
    return-void
.end method

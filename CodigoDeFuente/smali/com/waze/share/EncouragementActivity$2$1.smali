.class Lcom/waze/share/EncouragementActivity$2$1;
.super Ljava/lang/Object;
.source "EncouragementActivity.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/EncouragementActivity$2;->onFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/EncouragementActivity$2;


# direct methods
.method constructor <init>(Lcom/waze/share/EncouragementActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/EncouragementActivity$2$1;->this$1:Lcom/waze/share/EncouragementActivity$2;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 2
    .parameter "result"
    .parameter "state"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$2$1;->this$1:Lcom/waze/share/EncouragementActivity$2;

    #getter for: Lcom/waze/share/EncouragementActivity$2;->this$0:Lcom/waze/share/EncouragementActivity;
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity$2;->access$0(Lcom/waze/share/EncouragementActivity$2;)Lcom/waze/share/EncouragementActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/share/EncouragementActivity;->setResult(I)V

    .line 274
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$2$1;->this$1:Lcom/waze/share/EncouragementActivity$2;

    #getter for: Lcom/waze/share/EncouragementActivity$2;->this$0:Lcom/waze/share/EncouragementActivity;
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity$2;->access$0(Lcom/waze/share/EncouragementActivity$2;)Lcom/waze/share/EncouragementActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/share/EncouragementActivity;->finish()V

    .line 276
    :cond_0
    return-void
.end method

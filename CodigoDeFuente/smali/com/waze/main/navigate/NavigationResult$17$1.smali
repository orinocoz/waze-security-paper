.class Lcom/waze/main/navigate/NavigationResult$17$1;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/main/navigate/NavigationResult$17;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$17$1;->this$1:Lcom/waze/main/navigate/NavigationResult$17;

    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2
    .parameter "okToAccess"

    .prologue
    .line 1213
    if-eqz p1, :cond_0

    .line 1215
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1216
    .local v0, a:Lcom/waze/MainActivity;
    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->navResultOpenAddFromActivity()V

    .line 1218
    .end local v0           #a:Lcom/waze/MainActivity;
    :cond_0
    return-void
.end method

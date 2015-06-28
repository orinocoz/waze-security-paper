.class Lcom/waze/share/UserDetailsActivity$12;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->getSharedLocationsView(IILcom/waze/navigate/AddressItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserDetailsActivity;

.field private final synthetic val$ai:Lcom/waze/navigate/AddressItem;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$12;->this$0:Lcom/waze/share/UserDetailsActivity;

    iput-object p2, p0, Lcom/waze/share/UserDetailsActivity$12;->val$ai:Lcom/waze/navigate/AddressItem;

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 561
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/UserDetailsActivity$12;->val$ai:Lcom/waze/navigate/AddressItem;

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity$12;->this$0:Lcom/waze/share/UserDetailsActivity;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;)V

    .line 562
    return-void
.end method

.class Lcom/waze/share/ShareFbWithListAdapter$1;
.super Ljava/lang/Object;
.source "ShareFbWithListAdapter.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbWithListAdapter;->getView(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Lcom/waze/share/ShareFbFriend;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbWithListAdapter$1;->val$imageView:Landroid/widget/ImageView;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 101
    new-instance v0, Lcom/waze/share/ShareFbWithListAdapter$1$1;

    iget-object v1, p0, Lcom/waze/share/ShareFbWithListAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1, p1}, Lcom/waze/share/ShareFbWithListAdapter$1$1;-><init>(Lcom/waze/share/ShareFbWithListAdapter$1;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

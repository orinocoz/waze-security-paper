.class Lcom/waze/reports/PhotoPagerSection$3;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PhotoPagerSection;->setupViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PhotoPagerSection;


# direct methods
.method constructor <init>(Lcom/waze/reports/PhotoPagerSection;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$3;->this$0:Lcom/waze/reports/PhotoPagerSection;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$3;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$0(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/ifs/ui/WazeViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection$3;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    invoke-static {v1}, Lcom/waze/reports/PhotoPagerSection;->access$5(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/ifs/ui/WazePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(IZ)V

    .line 288
    return-void
.end method

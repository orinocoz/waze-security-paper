.class Lcom/waze/ifs/ui/WazeViewPager$1;
.super Ljava/lang/Object;
.source "WazeViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/WazeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 126
    iget v0, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    check-cast p2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/waze/ifs/ui/WazeViewPager$1;->compare(Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method

.class Lcom/waze/ifs/ui/WazeViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "WazeViewPager.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/WazeViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/waze/ifs/ui/WazeViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/waze/ifs/ui/WazeViewPager$SavedState;
    .locals 1
    .parameter "in"
    .parameter "loader"

    .prologue
    .line 1248
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/waze/ifs/ui/WazeViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/waze/ifs/ui/WazeViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/waze/ifs/ui/WazeViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/waze/ifs/ui/WazeViewPager$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 1252
    new-array v0, p1, [Lcom/waze/ifs/ui/WazeViewPager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager$SavedState$1;->newArray(I)[Lcom/waze/ifs/ui/WazeViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

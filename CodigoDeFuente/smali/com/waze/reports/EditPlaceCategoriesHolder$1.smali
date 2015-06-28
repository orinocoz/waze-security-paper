.class Lcom/waze/reports/EditPlaceCategoriesHolder$1;
.super Ljava/lang/Object;
.source "EditPlaceCategoriesHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategories()[Lcom/waze/NativeManager$VenueCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 28
    .local v0, instance:Lcom/waze/NativeManager;
    invoke-virtual {v0}, Lcom/waze/NativeManager;->venueProviderGetCategories()[Lcom/waze/NativeManager$VenueCategory;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/reports/EditPlaceCategoriesHolder;->access$0([Lcom/waze/NativeManager$VenueCategory;)V

    .line 29
    return-void
.end method

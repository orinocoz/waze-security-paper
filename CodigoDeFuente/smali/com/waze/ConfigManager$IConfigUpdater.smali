.class public interface abstract Lcom/waze/ConfigManager$IConfigUpdater;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IConfigUpdater"
.end annotation


# virtual methods
.method public abstract updateConfigItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;)V"
        }
    .end annotation
.end method

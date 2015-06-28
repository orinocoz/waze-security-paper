.class public Lcom/waze/mywaze/moods/MoodItem;
.super Ljava/lang/Object;
.source "MoodItem.java"


# instance fields
.field public caption:Ljava/lang/String;

.field public enabled:Z

.field public first:Z

.field public image:Landroid/graphics/drawable/Drawable;

.field public last:Z

.field public mood:Ljava/lang/String;

.field public title:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZ)V
    .locals 0
    .parameter "mood"
    .parameter "caption"
    .parameter "image"
    .parameter "title"
    .parameter "enabled"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/waze/mywaze/moods/MoodItem;->mood:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/waze/mywaze/moods/MoodItem;->caption:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/waze/mywaze/moods/MoodItem;->image:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-boolean p4, p0, Lcom/waze/mywaze/moods/MoodItem;->title:Z

    .line 20
    iput-boolean p5, p0, Lcom/waze/mywaze/moods/MoodItem;->enabled:Z

    .line 21
    iput-boolean p6, p0, Lcom/waze/mywaze/moods/MoodItem;->first:Z

    .line 22
    iput-boolean p7, p0, Lcom/waze/mywaze/moods/MoodItem;->last:Z

    .line 23
    return-void
.end method

.class Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "PlacesAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolder"
.end annotation


# instance fields
.field CompleteTextImage:Landroid/view/View;

.field RowType:Landroid/widget/ImageView;

.field SecondaryTitle:Lcom/waze/view/text/WazeTextView;

.field Title:Lcom/waze/view/text/WazeTextView;

.field root:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;-><init>()V

    return-void
.end method

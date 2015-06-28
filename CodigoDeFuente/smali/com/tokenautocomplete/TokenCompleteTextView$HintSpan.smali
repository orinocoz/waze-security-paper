.class public Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;
.super Landroid/text/style/TextAppearanceSpan;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HintSpan"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "family"
    .parameter "style"
    .parameter "size"
    .parameter "color"
    .parameter "linkColor"

    .prologue
    .line 771
    invoke-direct/range {p0 .. p5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 772
    return-void
.end method

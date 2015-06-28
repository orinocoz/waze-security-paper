.class Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1$1;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
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
        "Lcom/waze/settings/SettingsValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1$1;->this$2:Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/settings/SettingsValue;Lcom/waze/settings/SettingsValue;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 986
    iget v0, p1, Lcom/waze/settings/SettingsValue;->rank:F

    iget v1, p2, Lcom/waze/settings/SettingsValue;->rank:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x1

    .line 988
    :goto_0
    return v0

    .line 987
    :cond_0
    iget v0, p1, Lcom/waze/settings/SettingsValue;->rank:F

    iget v1, p2, Lcom/waze/settings/SettingsValue;->rank:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 988
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/settings/SettingsValue;

    check-cast p2, Lcom/waze/settings/SettingsValue;

    invoke-virtual {p0, p1, p2}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter$1$1;->compare(Lcom/waze/settings/SettingsValue;Lcom/waze/settings/SettingsValue;)I

    move-result v0

    return v0
.end method

.class public final Lcom/facebook/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_facebook_friend_picker_fragment:[I = null

.field public static final com_facebook_friend_picker_fragment_multi_select:I = 0x0

.field public static final com_facebook_like_view:[I = null

.field public static final com_facebook_like_view_auxiliary_view_position:I = 0x3

.field public static final com_facebook_like_view_foreground_color:I = 0x0

.field public static final com_facebook_like_view_horizontal_alignment:I = 0x4

.field public static final com_facebook_like_view_object_id:I = 0x1

.field public static final com_facebook_like_view_style:I = 0x2

.field public static final com_facebook_login_view:[I = null

.field public static final com_facebook_login_view_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_fetch_user_info:I = 0x1

.field public static final com_facebook_login_view_login_text:I = 0x2

.field public static final com_facebook_login_view_logout_text:I = 0x3

.field public static final com_facebook_picker_fragment:[I = null

.field public static final com_facebook_picker_fragment_done_button_background:I = 0x6

.field public static final com_facebook_picker_fragment_done_button_text:I = 0x4

.field public static final com_facebook_picker_fragment_extra_fields:I = 0x1

.field public static final com_facebook_picker_fragment_show_pictures:I = 0x0

.field public static final com_facebook_picker_fragment_show_title_bar:I = 0x2

.field public static final com_facebook_picker_fragment_title_bar_background:I = 0x5

.field public static final com_facebook_picker_fragment_title_text:I = 0x3

.field public static final com_facebook_place_picker_fragment:[I = null

.field public static final com_facebook_place_picker_fragment_radius_in_meters:I = 0x0

.field public static final com_facebook_place_picker_fragment_results_limit:I = 0x1

.field public static final com_facebook_place_picker_fragment_search_text:I = 0x2

.field public static final com_facebook_place_picker_fragment_show_search_box:I = 0x3

.field public static final com_facebook_profile_picture_view:[I = null

.field public static final com_facebook_profile_picture_view_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010027

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment:[I

    .line 225
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_like_view:[I

    .line 231
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    .line 236
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment:[I

    .line 244
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment:[I

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view:[I

    .line 251
    return-void

    .line 225
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x1t 0x7ft
        0x33t 0x0t 0x1t 0x7ft
        0x34t 0x0t 0x1t 0x7ft
        0x35t 0x0t 0x1t 0x7ft
        0x36t 0x0t 0x1t 0x7ft
    .end array-data

    .line 231
    :array_1
    .array-data 0x4
        0x2ct 0x0t 0x1t 0x7ft
        0x2dt 0x0t 0x1t 0x7ft
        0x2et 0x0t 0x1t 0x7ft
        0x2ft 0x0t 0x1t 0x7ft
    .end array-data

    .line 236
    :array_2
    .array-data 0x4
        0x20t 0x0t 0x1t 0x7ft
        0x21t 0x0t 0x1t 0x7ft
        0x22t 0x0t 0x1t 0x7ft
        0x23t 0x0t 0x1t 0x7ft
        0x24t 0x0t 0x1t 0x7ft
        0x25t 0x0t 0x1t 0x7ft
        0x26t 0x0t 0x1t 0x7ft
    .end array-data

    .line 244
    :array_3
    .array-data 0x4
        0x28t 0x0t 0x1t 0x7ft
        0x29t 0x0t 0x1t 0x7ft
        0x2at 0x0t 0x1t 0x7ft
        0x2bt 0x0t 0x1t 0x7ft
    .end array-data

    .line 249
    :array_4
    .array-data 0x4
        0x30t 0x0t 0x1t 0x7ft
        0x31t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
